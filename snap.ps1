Param(
  [string]$file = "#*.sve", # filename format
  [int]$x = 0, # x
  [int]$y = 0, # y
  [int]$z = 0, # z
  [int]$f = 3  # zoom 0..3(1/1)..6(1/2).8(1/4)
)

Get-ChildItem .\save\$file | ForEach-Object {
  .\simutrans.exe -pause -fullscreen -snapshot $x,$y,$z,$f -load $_.Name }
