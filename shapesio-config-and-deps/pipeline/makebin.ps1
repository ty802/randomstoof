mkdir bin
      $addPath = 'Bin'
      Function Add-PathVariable {
          param (
              [string]$addPath
          )
          if (Test-Path $addPath){
              $regexAddPath = [regex]::Escape($addPath)
              $arrPath = $env:Path -split ';' | Where-Object {$_ -notMatch 
      "^$regexAddPath\\?"}
              $env:Path = ($arrPath + $addPath) -join ';'
          } else {
              Throw "'$addPath' is not a valid path."
          }
      }
move .\pipeline\avicap32.dll .\bin\avicap32.dll
move .\pipeline\msvfw32.dll .\bin\msvfw32.dll