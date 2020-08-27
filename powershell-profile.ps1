Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Powerlevel10k-Classic
<# function prompt(){Write-Prompt $pwd.tostring().split('\')[$pwd.tosring.split.langth -1];$(Write-VcsStatus)+' >'} #>
function owd(){Start-Process $pwd;}
function profile {
    code $profile;   
}
function MkProject {
    param (
        # Parameter help description
        [Parameter()]
        [string]
        $name
    )
    Set-Location ~\projects
    if (Test-Path($name)){
        Write-Error("Project "+$name+" already exists")
        Set-Location $name
    }else {
        mkdir $name |Out-Null
        Set-Location $name;
        git init;
    }
    
}
function Pclone {
    param (
        # Parameter help description
        [Parameter()]
        [string]
        $url
    )
    cd ~\projects
    git clone $url
    
}
function Reset-VENV {
    if (Test-Path Env:_OLD_VIRTUAL_PATH ){
        $env:Path = $env:_OLD_VIRTUAL_PATH
        $env:_OLD_VIRTUAL_PATH =""
    }
    if (Test-Path env:VIRTUAL_ENV) {
        $env:VIRTUAL_ENV = ""
    }
}
