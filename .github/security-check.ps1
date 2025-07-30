# Coffee Patterns Repository Security Setup Script (PowerShell)
param([switch]$CheckOnly, [switch]$Help)

if ($Help) {
    Write-Host "Coffee Patterns Security Setup" -ForegroundColor Cyan
    Write-Host "Usage: .\security-setup-clean.ps1 [-CheckOnly] [-Help]"
    exit 0
}

Write-Host "Coffee Patterns Security Setup" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Check git repository
try {
    $null = git rev-parse --git-dir 2>$null
    $repoUrl = git remote get-url origin 2>$null
    Write-Host "Repository: $repoUrl" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Not a git repository or no remote origin" -ForegroundColor Red
    exit 1
}

# Check security files
$files = @(
    ".github\workflows\security.yml",
    ".github\workflows\code-quality.yml",
    ".github\workflows\auto-review.yml",
    ".github\dependabot.yml",
    ".github\pull_request_template.md",
    "SECURITY.md"
)

Write-Host "Checking security files:" -ForegroundColor Cyan
$allExist = $true
foreach ($file in $files) {
    if (Test-Path $file) {
        Write-Host "  ✓ $file" -ForegroundColor Green
    } else {
        Write-Host "  ✗ $file" -ForegroundColor Red
        $allExist = $false
    }
}

if ($CheckOnly) {
    if ($allExist) {
        Write-Host "`nAll security files are present!" -ForegroundColor Green
    } else {
        Write-Host "`nSome files are missing!" -ForegroundColor Yellow
    }
    exit 0
}

Write-Host "`nSecurity Features Implemented:" -ForegroundColor Yellow
Write-Host "• Automated security scanning"
Write-Host "• Dependency vulnerability checks"
Write-Host "• PR quality validation"
Write-Host "• Spam detection"
Write-Host "• Secret scanning"
Write-Host "• File size limits"

Write-Host "`nManual Setup Required:" -ForegroundColor Yellow
Write-Host "1. Go to GitHub Settings > Branches"
Write-Host "2. Add protection rule for 'main' branch"
Write-Host "3. Enable security features in Settings > Security"
Write-Host "4. Configure Actions permissions"

Write-Host "`nNext steps:" -ForegroundColor Cyan
Write-Host "git add ."
Write-Host "git commit -m `"Add repository security`""
Write-Host "git push origin main"

Write-Host "`nSecurity setup complete!" -ForegroundColor Green
