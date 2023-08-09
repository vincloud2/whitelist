# Set the path to the CSV file containing the list of files to exclude
$csvFilePath = "C:\whitelist\whitelist\output.csv"

# Read the CSV file and get the list of files to exclude
$filesToExclude = Import-Csv -Path $csvFilePath

# Add each file in the list as an exclusion
foreach ($fileEntry in $filesToExclude) {
    $filePath = $fileEntry.FilePath
    Write-Host "Adding exclusion for: $filePath"
    
    Add-MpPreference -ExclusionPath $filePath
}

Write-Host "Exclusion process completed."
