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