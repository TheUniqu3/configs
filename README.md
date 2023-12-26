1. Enter command  
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh/ | Invoke-Expression
```
(to allow PowerShell to execute scripts)
2. Paste scripts bellow
```
iwr -useb get.scoop.sh | iex
scoop bucket add extras
scoop install wezterm
scoop install starship
scoop install zoxide
scoop install meld
scoop install bat
scoop install gum
scoop install lazygit
scoop install eza 
scoop install fzf
scoop install glow
scoop install chezmoi
scoop install git-aliases

chezmoi init git@github.com:TheUniqu3/configs.git
chezmoi apply
```
