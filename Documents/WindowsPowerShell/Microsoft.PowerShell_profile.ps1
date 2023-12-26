Import-Module PSReadLine
Import-Module git-aliases -DisableNameChecking

Invoke-Expression (&starship init powershell)
Invoke-Expression (& { (zoxide init powershell | Out-String) })

Set-PSReadlineOption -Color @{
    "Command" = [ConsoleColor]::Green
    "Parameter" = [ConsoleColor]::Gray
    "Operator" = [ConsoleColor]::Magenta
    "Variable" = [ConsoleColor]::White
    "String" = [ConsoleColor]::Yellow
    "Number" = [ConsoleColor]::Blue
    "Type" = [ConsoleColor]::Cyan
    "Comment" = [ConsoleColor]::DarkCyan
}

Function openDoc(){
$t=gum file $HOME\Documents\TermDocumentation
glow $t
}
Function GB(){
$Command=gum choose "workflow" "add" "commit" "push" "pull"  "clone" "status" "MergeConf"
if($Command -eq "workflow"){
    git status
    wezterm cli split-pane -- lazygit
}
elseif($Command -eq "commit"){
    $Mssg=gum input --placeholder "enter commit message"
    git commit -m $Mssg
}
elseif($Command -eq "add"){
    $files=gum input --placeholder "enter dir (. for all files)"
    git add $files
}
elseif($Command -eq "clone"){
    $url=gum input --placeholder "enter repo url"
    git clone $url
    $dir = [regex]::match($url,'([^/]+)\.git$').Groups[1].Value
    z $dir
}
elseif($Command -eq "MergeConf"){
    $loc = Get-Location
    meld $loc
}
else{
    git $Command
}
}

Clear-Host
