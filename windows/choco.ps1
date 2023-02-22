# First, install Chocolatey on the system by executing a PowerShell script from the web. 
# The iex (Invoke-Expression) command runs the code contained within the parentheses and quotes.
# The -NoProfile switch specifies that the current user's profile shouldn't be loaded, and the -ExecutionPolicy Bypass switch allows the script to run despite the current execution policy. 
# The DownloadString method of the System.Net.WebClient object is used to download the Chocolatey installation script as a string, which is then executed by iex.
# Then add the Chocolatey bin directory to the system PATH, so that the choco command can be run from anywhere in the system. 
# The %PATH% variable contains the current system PATH, and %ALLUSERSPROFILE%\chocolatey\bin is the path to the Chocolatey bin directory.
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

# All softwares downloaded are present in the software.txt file, you can customize it.
# Ensure the software name is working before adding him to the file.
$softwares = Get-Content -Path .\software.txt

# Start the download and setup of the differents softwares presents in the file
foreach ($software in $softwares) {
	choco install $software
}

# Define the font file URL
$fontUrl = "https://github.com/JetBrains/JetBrainsMono/releases/download/v1.0.5/JetBrainsMono-1.0.5.zip"

# Download the font file to a temporary location
$fontFile = "$env:temp\JetBrainsMono.zip"
Invoke-WebRequest -Uri $fontUrl -OutFile $fontFile

# Extract the font file from the archive
Expand-Archive -Path $fontFile -DestinationPath "$env:temp"

# Install the font
Add-Type -AssemblyName PresentationCore

$destination = "$env:windir\Fonts"
$fontPath = "$env:temp\JetBrainsMono-1.0.5\ttf\JetBrainsMono-Regular.ttf"

[System.IO.File]::Copy($fontPath, "$destination\JetBrainsMono-Regular.ttf")
[System.Windows.Media.Fonts.TextFontFamily]::GetFontFamily("$destination\JetBrainsMono-Regular.ttf").Fonts | ForEach-Object {
    $_.TryRemove("file:///" + $fontPath)
    $_.AddFontFile("file:///" + "$destination\JetBrainsMono-Regular.ttf")
}