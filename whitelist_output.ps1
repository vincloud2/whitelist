# Hash algorithm to use (SHA-256 in this example)
$hashAlgorithm = "SHA256"

# Specify the root directory and excluded directories
$rootDirectory = "C:\Users"
$excludedDirectories = @("C:\Windows\System32", "C:\Windows\System32")

# Create an array to store file information and hashes
$fileHashes = @()

# Recursively scan files in the specified root directory
Get-ChildItem -Path $rootDirectory -File -Recurse -ErrorAction SilentlyContinue | ForEach-Object {
    $fileInfo = $_

    # Check if the file's directory is in the excluded list
    $isExcluded = $excludedDirectories -contains $fileInfo.Directory.FullName

    if (-not $isExcluded) {
        # Calculate file hash
        $hash = Get-FileHash -Path $fileInfo.FullName -Algorithm $hashAlgorithm

        # Create a custom object with file information and hash
        $fileHashObject = [PSCustomObject]@{
            FileName = $fileInfo.FullName
            Hash = $hash.Hash
        }

        # Add the object to the array
        $fileHashes += $fileHashObject
    }
}

# Export the array to a CSV file
$fileHashes | Export-Csv -Path "output.csv" -NoTypeInformation
