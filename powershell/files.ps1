function Sort-Pandas {
    param
(
    [Parameter(Mandatory)]
    [String]
    [ValidateScript( { Test-Path $_ -PathType 'Container' })]
    $Path
)
    # Add your code here
    # List the pandas in the panda directory from oldest to  youngest
    # output your results to a file called 'panda-family.csv' with the columns: date, filename
}

Expand-Archive pandas.zip -DestinationPath . -Force

Sort-Pandas -Path pandas