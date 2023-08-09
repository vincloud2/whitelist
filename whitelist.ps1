# Specify the root directory where you want to start the scan
$rootDirectory = "C:\"

# List of directories to exclude (add more if needed)
$excludedDirectories = @(
    "C:\whitelist",
    "C:\whitelist"
)

# Hash algorithm to use (SHA-256 in this example)
$hashAlgorithm = "SHA256"

# Recursively scan files in the specified root directory
Get-ChildItem -Path $rootDirectory -File -Recurse -ErrorAction SilentlyContinue | ForEach-Object {
    $fileInfo = $_

    # Check if the file's directory is in the excluded list
    $isExcluded = $excludedDirectories -contains $fileInfo.Directory.FullName

    if (-not $isExcluded) {
        # Calculate file hash
        $hash = Get-FileHash -Path $fileInfo.FullName -Algorithm $hashAlgorithm

        # Print file name and hash
        "$($fileInfo.FullName), $($hash.Hash)"
    }
}
