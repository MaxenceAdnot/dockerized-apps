# Run this command to configure your shell:
# Define the following env variables : $Env:DOCKER_TLS_VERIFY $Env:DOCKER_HOST $Env:DOCKER_CERT_PATH $Env:DOCKER_MACHINE_NAME
# It uses the first available docker machine

& 'C:\Program Files\Docker Toolbox\docker-machine.exe' env --shell powershell | Invoke-Expression

function drill
{
  $path =  (Split-Path $script:MyInvocation.MyCommand.Path)
  Set-Alias drill (Join-Path $path drill.ps1)
  Invoke-Expression $MyInvocation.Line
}

function git
{
  $path =  (Split-Path $script:MyInvocation.MyCommand.Path)
  Set-Alias git (Join-Path $path git.ps1)
  Invoke-Expression $MyInvocation.Line
}

function lynx
{
  $path =  (Split-Path $script:MyInvocation.MyCommand.Path)
  Set-Alias lynx (Join-Path $path lynx.ps1)
  Invoke-Expression $MyInvocation.Line
}

function nmap
{
  $path =  (Split-Path $script:MyInvocation.MyCommand.Path)
  Set-Alias nmap (Join-Path $path nmap.ps1)
  Invoke-Expression $MyInvocation.Line
}

function openssl
{
  $path =  (Split-Path $script:MyInvocation.MyCommand.Path)
  Set-Alias openssl (Join-Path $path openssl.ps1)
  Invoke-Expression $MyInvocation.Line
}

function python
{
  $path =  (Split-Path $script:MyInvocation.MyCommand.Path)
  Set-Alias python (Join-Path $path python.ps1)
  Invoke-Expression $MyInvocation.Line
}

function rsync
{
  $path =  (Split-Path $script:MyInvocation.MyCommand.Path)
  Set-Alias rsync (Join-Path $path rsync.ps1)
  Invoke-Expression $MyInvocation.Line
}

function scp
{
  $path =  (Split-Path $script:MyInvocation.MyCommand.Path)
  Set-Alias scp (Join-Path $path scp.ps1)
  Invoke-Expression $MyInvocation.Line
}

function ssh
{
  $path =  (Split-Path $script:MyInvocation.MyCommand.Path)
  Set-Alias ssh (Join-Path $path ssh.ps1)
  Invoke-Expression $MyInvocation.Line
}

function wget
{
  $path =  (Split-Path $script:MyInvocation.MyCommand.Path)
  Set-Alias wget (Join-Path $path wget.ps1)
  Invoke-Expression $MyInvocation.Line
}

export-modulemember -function *
