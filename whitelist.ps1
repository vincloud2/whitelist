# Specify the root directory where you want to start the scan
$rootDirectory = "C:\"

# Hash algorithm to use (SHA-256 in this example)
$hashAlgorithm = "SHA256"

# Recursively scan files in the specified root directory
Get-ChildItem -Path $rootDirectory -File -Recurse -ErrorAction SilentlyContinue | ForEach-Object {
    $fileInfo = $_
    
    # Calculate file hash
    $hash = Get-FileHash -Path $fileInfo.FullName -Algorithm $hashAlgorithm
    
    # Print file name and hash
    "$($fileInfo.FullName), $($hash.Hash)"
}
