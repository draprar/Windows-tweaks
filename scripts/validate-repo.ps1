param(
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
)

$ErrorActionPreference = "Stop"
$failures = New-Object System.Collections.Generic.List[string]

$rootReadme = Join-Path $RepoRoot "README.md"
if (-not (Test-Path -LiteralPath $rootReadme)) {
    throw "Missing required file: README.md in repository root"
}

$ignoreDirs = @(".github", "scripts", ".idea", ".git")
$tweakDirs = Get-ChildItem -Path $RepoRoot -Directory |
    Where-Object { $ignoreDirs -notcontains $_.Name }

if (-not $tweakDirs) {
    $failures.Add("No tweak directories found in repository root.")
}

$rootReadmeText = Get-Content -LiteralPath $rootReadme -Raw

foreach ($dir in $tweakDirs) {
    $moduleReadme = Join-Path $dir.FullName "README.md"
    if (-not (Test-Path -LiteralPath $moduleReadme)) {
        $failures.Add("[$($dir.Name)] Missing README.md")
    }

    $regFiles = Get-ChildItem -Path $dir.FullName -File -Filter "*.reg"
    $undoFiles = @($regFiles | Where-Object { $_.Name -like "undo_*.reg" })
    $applyFiles = @($regFiles | Where-Object { $_.Name -notlike "undo_*.reg" })

    if ($applyFiles.Count -lt 1) {
        $failures.Add("[$($dir.Name)] Missing apply .reg file")
    }

    if ($undoFiles.Count -lt 1) {
        $failures.Add("[$($dir.Name)] Missing undo_*.reg file")
    }

    $headingPattern = '(?m)^###\s+`' + [regex]::Escape($dir.Name) + '`'
    if (-not [regex]::IsMatch($rootReadmeText, $headingPattern)) {
        $failures.Add("[README.md] Missing tweak section heading for: $($dir.Name)")
    }
}

if ($failures.Count -gt 0) {
    Write-Host "Repository validation failed:" -ForegroundColor Red
    foreach ($failure in $failures) {
        Write-Host " - $failure" -ForegroundColor Red
    }
    exit 1
}

Write-Host "Repository validation passed." -ForegroundColor Green

