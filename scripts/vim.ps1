function vim {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]]$Args
    )

    if ($Args.Count -gt 0) {
        # Open all provided files
        Start-Process notepad.exe -ArgumentList $Args
    }
    else {
        # No args → just open empty Notepad
        Start-Process notepad.exe
    }
}
