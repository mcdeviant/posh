$Dir = "C:\Users\Documents\DeleteMe"
Write-Output "Test to see if folder [$Dir]  exists"
if (Test-Path -Path $Dir) {
    Write-Output "Path exists, removing"
    Remove-Item -Recurse -Force $Dir
} else {
    Write-Output "Creating DeleteMe directory"
    New-Item -Path "C:\Users\Documents\" -Name "DeleteMe" ItemType = "directory"
    }