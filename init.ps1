# Ensure script root is defined
$ScriptRoot = if ($PSScriptRoot) {
    $PSScriptRoot
}
elseif ($MyInvocation.MyCommand.Path) {
    Split-Path -Parent $MyInvocation.MyCommand.Path
}
else {
    Get-Location
}

# Clipboard utilities
. "$ScriptRoot\scripts\pbcopy.ps1"
. "$ScriptRoot\scripts\pbpaste.ps1"

# Editing aliases
. "$ScriptRoot\scripts\vim.ps1"
