# 0Din Management Tool
function Get-0DinStats {
    $issues = gh api /repos/aka1976mb/bug-bounty/issues --paginate | ConvertFrom-Json
    $security = $issues | Where-Object { $_.labels.name -contains 'security' }
        Write-Host "📊 0Din Program Statistics" -ForegroundColor Green
    Write-Host "Total Submissions: $($security.Count)"
    Write-Host "Open: $($($security | Where-Object { $_.state -eq 'open' }).Count)"
    Write-Host "Closed: $($($security | Where-Object { $_.state -eq 'closed' }).Count)"
        $security | Group-Object {
        $_.labels.name | Where-Object { $_ -match 'severity-' }
    } | ForEach-Object {
        Write-Host "$($_.Name): $($_.Count)"
    }
}
function New-0DinBounty {
    param(
        [string]$Title,
        [string]$Amount,
        [string]$Description
    )
        $body = "**Bounty Announcement**`n`n$Description`n`n**Reward:** $$$Amount`n**Deadline:** $(Get-Date (Get-Date).AddDays(30) -Format 'yyyy-MM-dd')`n**Scope:** See SCOPE.md`n**Submission:** Use security report template"
        $fullTitle = "[BOUNTY] $Title - $$$Amount"
        $arguments = @('issue', 'create', '--title', $fullTitle, '--body-file', '-', '--label', 'bounty')
        $body | & gh $arguments
}
function Update-0DinIssue {
    param(
        [int]$Id,
        [string]$Status,
        [string]$Comment
    )
        gh issue comment $Id --body "**Status Update:** $Status`n`n$Comment`n`n*Updated: $(Get-Date -Format 'yyyy-MM-dd HH:mm')*"
}
# Export functions
Export-ModuleMember -Function Get-0DinStats, New-0DinBounty, Update-0DinIssue