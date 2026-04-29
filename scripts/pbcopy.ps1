function pbcopy {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $true)]
        [string]$InputObject
    )

    begin {
        $builder = New-Object System.Text.StringBuilder
    }

    process {
        [void]$builder.AppendLine($InputObject)
    }

    end {
        $text = $builder.ToString().TrimEnd("`r","`n")
        Set-Clipboard -Value $text
    }
}
