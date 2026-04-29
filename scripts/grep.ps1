param(
    [Parameter(Position=0, Mandatory=$true)]
    [string]$Pattern
)

process {
    if ($_ -match $Pattern) {
        $_
    }
}
