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



# Check Exclusions in Windows Security:

After you've added exclusions using PowerShell, you can verify them in the Windows Security app:

Open Windows Security by searching for it in the Start menu.
Click on "Virus & threat protection."
Scroll down to the "Exclusions" section and click on "Add or remove exclusions."
You should see the exclusions you've added using PowerShell listed here.

