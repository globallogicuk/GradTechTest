#Requires -Modules @{ ModuleName="Pester"; ModuleVersion="5.0.2" }

BeforeAll {
    $FileName = 'panda-family.csv'
}
Describe -Name 'The CSV file in the powershell folder root' {
    it 'exists' {
        Test-Path $FileName | should -Be $true
    }
    it 'has old panda as first entry' {

    }
}

Describe -Name "The CSV's Data" {
    BeforeAll {
        $csv = Import-Csv $FileName
    }
    it 'has oldpanda as the first entry' {
        $csv[0].Date -eq '1980-01-01' | should -Be true
        $csv[0].Name -eq 'oldpanda' | should -Be true
    }
    it 'has unclepanda as the second entry' {
        $csv[1].Date -eq '2001-07-25' | should -Be true
        $csv[1].Name -eq 'unclepanda' | should -Be true
    }
    it 'has youngpanda as the third entry' {
        $csv[2].Date -eq '2018-11-15' | should -Be true
        $csv[2].Name -eq 'youngpanda' | should -Be true
    }
    it 'has babypanda as the foruth entry' {
        $csv[3].Date -eq '2020-10-02' | should -Be true
        $csv[3].Name -eq 'babypanda' | should -Be true
    }
}