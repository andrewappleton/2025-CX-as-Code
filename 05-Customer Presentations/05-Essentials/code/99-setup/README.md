# Notes on using Powershell
## This project was completed using Powershell 7

To enable scripts to run... Open a terminal as an administrator:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

Unless there is a clever way to do it in Windows, you should use the full name "gc.exe" for the Platform API CLU, as the name "gc" is reserved for a Powershell Cmdlet (Get-Content)...
    Alternatives:  
        Rename gc.exe to something else...?  gcli.exe?
        Remove-Alias gc - not sure if that would break something else, also seems to be protected: 
            Remove-Alias: Alias was not removed because alias gc is constant or read-only.
        Use full path to executable...?

