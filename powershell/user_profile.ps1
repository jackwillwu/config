# Prompt
oh-my-posh init pwsh | Invoke-Expression

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/amro.omp.json" | Invoke-Expression


# Set   
Import-Module Terminal-icons
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSReadLineOption -PredictionViewStyle Listview

Set-PSReadLineOption -EditMode windows
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Alias

Set-Alias mpv mpvnet.exe
Set-Alias n nvim
Set-Alias g git
Set-Alias ll ls 
Set-Alias p python
Set-Alias r1 Rscript
Set-Alias r2 R.exe
Set-Alias jj joplin
Set-Alias word WINWORD.EXE
Set-Alias ppt POWERPNT.EXE
Set-Alias excel EXCEL.EXE
Set-Alias pdf SumatraPDF
# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
