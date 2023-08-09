# Set the path to the CSV file containing the list of files to exclude
$csvFileName = "C:\whitelist\whitelist\output.csv"

# Read the CSV file and get the list of files to exclude
$filesToExclude = Import-Csv -Path $csvFileName

# Add each file in the list as an exclusion
foreach ($fileEntry in $filesToExclude) {
    $fileName = $fileEntry.FileName
    Write-Host "Adding exclusion for: $fileName"
    
    Add-MpPreference -ExclusionPath $fileName
}

Write-Host "Exclusion process completed."
