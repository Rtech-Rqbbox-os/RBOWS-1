Add-Type -AssemblyName System.Drawing

$size = 256
$bmp = New-Object System.Drawing.Bitmap($size, $size)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$g.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::AntiAliasGridFit

# Background
$bgBrush = New-Object System.Drawing.Drawing2D.LinearGradientBrush(
    (New-Object System.Drawing.Point(0, 0)),
    (New-Object System.Drawing.Point($size, $size)),
    [System.Drawing.Color]::FromArgb(10, 10, 26),
    [System.Drawing.Color]::FromArgb(10, 22, 40)
)
$g.FillRectangle($bgBrush, 0, 0, $size, $size)

# Grid lines
$gridPen = New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb(10, 255, 255, 255), 0.5)
for ($i = 0; $i -lt $size; $i += 32) {
    $g.DrawLine($gridPen, $i, 0, $i, $size)
    $g.DrawLine($gridPen, 0, $i, $size, $i)
}

# Window panes (4 squares like Windows logo)
$blueBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(255, 0, 120, 212))
$gap = 8
$paneW = 90
$paneH = 90
$startX = ($size - ($paneW * 2 + $gap)) / 2
$startY = ($size - ($paneH * 2 + $gap)) / 2 - 10

$g.FillRectangle($blueBrush, $startX, $startY, $paneW, $paneH)
$g.FillRectangle($blueBrush, $startX + $paneW + $gap, $startY, $paneW, $paneH)
$g.FillRectangle($blueBrush, $startX, $startY + $paneH + $gap, $paneW, $paneH)
$g.FillRectangle($blueBrush, $startX + $paneW + $gap, $startY + $paneH + $gap, $paneW, $paneH)

# Text
$font = New-Object System.Drawing.Font('Segoe UI', 14, [System.Drawing.FontStyle]::Bold)
$textBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(120, 255, 255, 255))
$stringFormat = New-Object System.Drawing.StringFormat
$stringFormat.Alignment = [System.Drawing.StringAlignment]::Center
$g.DrawString('RBOWS 1', $font, $textBrush, ($size / 2), ($size - 22), $stringFormat)

$bmp.Save("$PSScriptRoot\..\build\icon.png", [System.Drawing.Imaging.ImageFormat]::Png)

# Also create ICO
$icon = [System.Drawing.Icon]::FromHandle($bmp.GetHicon())
$fs = [System.IO.FileStream]::new("$PSScriptRoot\..\build\icon.ico", [System.IO.FileMode]::Create)
$icon.Save($fs)
$fs.Close()

$g.Dispose()
$bmp.Dispose()

Write-Host "Icon generated: build\icon.png + build\icon.ico"
