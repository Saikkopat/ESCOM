$Path = "C:\Users\saikk\Repos\ESCOM\"  # Replace with your directory path
$LogPath = "C:\Users\saikk\Repos\ESCOM\Ouput.log"  # Replace with your log file path

$Files = Get-ChildItem -Path $Path -Recurse -File
$FileHashes = @{}

foreach ($File in $Files) {
    $Hash = Get-FileHash -Path $File.FullName -Algorithm MD5
    if ($FileHashes.ContainsKey($Hash.Hash)) {
        $FileHashes[$Hash.Hash] += ", $($File.FullName)"
    } else {
        $FileHashes[$Hash.Hash] = $File.FullName
    }
}

$Duplicates = $FileHashes.GetEnumerator() | Where-Object { $_.Value -match "," }

foreach ($Duplicate in $Duplicates) {
    Add-Content -Path $LogPath -Value "Duplicate files: $($Duplicate.Value)"
}
