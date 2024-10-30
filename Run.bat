@echo off
:: Set the name of the PowerShell script file
set "PowerShellScript=PortalFix.ps1"

:: Get the current directory
set "CurrentDir=%~dp0"

:: Run PowerShell script as administrator
PowerShell -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass -File ""%CurrentDir%%PowerShellScript%""' -Verb RunAs"
