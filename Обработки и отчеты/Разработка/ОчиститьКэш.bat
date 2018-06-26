@echo off
@rem Installing the Cyrillic character set 'UTF-8'
@%windir%\System32\chcp.com 65001

@cls
@color 5

@if not "%minimized%"=="" goto :minimized
@set minimized=true
@start /min cmd /C "%~dpnx0"
@goto :EOF
:minimized

@echo.
@echo      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@echo        _____ _      ______          _____  
@echo       / ____^| ^|    ^|  ____^|   /\   ^|  __ \ 
@echo      ^| ^|    ^| ^|    ^| ^|__     /  \  ^| ^|__) ^|
@echo      ^| ^|    ^| ^|    ^|  __^|   / /\ \ ^|  _  / 
@echo      ^| ^|____^| ^|____^| ^|____ / ____ \^| ^| \ \ 
@echo       \_____^|______^|______/_/    \_\_^|__\_\
@echo       / ____^|   /\   / ____^| ^|  ^| ^|  ____^| 
@echo      ^| ^|       /  \ ^| ^|    ^| ^|__^| ^| ^|__    
@echo      ^| ^|      / /\ \^| ^|    ^|  __  ^|  __^|   
@echo      ^| ^|____ / ____ \ ^|____^| ^|  ^| ^| ^|____  
@echo       \_____/_/    \_\_____^|_^|  ^|_^|______^| 
@echo.     
@echo      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@echo.  

@rmdir "%AppData%\1C\1Cv8" /S /Q
@rmdir "%LOCALAPPDATA%\1C\1Cv8" /S /Q

@timeout 60