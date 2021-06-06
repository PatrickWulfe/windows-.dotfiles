# Useful things
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Aliases
Function Git-Dotfiles {git --git-dir=$HOME\.cfg\ --work-tree=$HOME $args}
Set-Alias -name cfg -Value Git-Dotfiles
Function cds {Set-Location -Path D:\src}
Set-Alias -Name 'touch' -Value 'New-Item'
Set-Alias -Name '..' -Value 'cd..'
Set-Alias -Name 'n' -Value 'nvim'

Invoke-Expression (&starship init powershell)
