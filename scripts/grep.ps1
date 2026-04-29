function grep {
    [CmdletBinding()]
    param (
        [Parameter(Position = 0, Mandatory = $true)]
        [string]$Pattern,

        [Parameter(ValueFromPipeline = $true)]
        [string]$InputObject
    )

    process {
        if ($InputObject -match $Pattern) {
            $InputObject
        }
    }
}
