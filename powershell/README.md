# Grad Tech Test - PowerShell

## Clone this repository

Use `git clone` to clone the repository locally, please do not fork this repository.

## Setup

Install the pester module for testing: `install-module pester -MinimumVersion 5.0.2 -MaximumVersion 5.0.2`

## Challenge

In the file [files.ps1](files.ps1), there's a function for sorting files in order of oldest to newest. Update the function to write the timestamp (In the format: `yyyy-MM-dd`) and the filename to the csv `panda-family.csv`.
These should be in the columns `Date`,`Name`

To run the tests:

1. `cd powershell`
1. Run `files.ps1`
1. Run `invoke-pester`

## Tips

When the test passes clean up your code.
It's worth spending time formatting and simplifing things.
It's more important that humans can read your code than computers.
