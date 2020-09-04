function ConvertFrom-SecureStringToPlainText ([System.Security.SecureString]$SecureString) {

    [System.Runtime.InteropServices.Marshal]::PtrToStringAuto(
    
        [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecureString)
    )            
}
New-Alias -Name s2p -Value ConvertFrom-SecureStringToPlainText
