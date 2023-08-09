# Command to install powershell to exe refer link -https://github.com/MScholtes/PS2EXE

- Install-Module ps2exe

# command to convert the ps1 scrit to .exe

- Invoke-ps2exe .\source.ps1 .\target.exe

# Run the exe on the target machine
- target.exe

# Command to exclude the file in You can also use PowerShell to add exclusions to Windows Defender. Here's an example:

# Add a folder exclusion
Add-MpPreference -ExclusionPath "C:\Path\To\Excluded\Folder"
# Add a file exclusion
Add-MpPreference -ExclusionPath "C:\Path\To\Excluded\File.exe"

