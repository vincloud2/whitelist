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


![image](https://github.com/vincloud2/whitelist/assets/128999303/d1e2d363-4b6f-4281-829c-2832eec884a6)

![image](https://github.com/vincloud2/whitelist/assets/128999303/3a75662b-2edf-4b37-bc16-198557b21a6a)

![image](https://github.com/vincloud2/whitelist/assets/128999303/e5c85f6b-cc88-41d6-afd3-b0151b90d44a)






