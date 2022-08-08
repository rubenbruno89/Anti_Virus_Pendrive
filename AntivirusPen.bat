@ECHO OFF
ECHO Digite a letra do seu dispositivo e pressione enter. 
ECHO (Verifique a letra atraves do Windows Explorer)
ECHO.
ECHO Digite somente a letra: 
set /p letter=

ECHO.
ECHO %letter%: selecionado.

ECHO.
ECHO Fechando o Explorer para evitar problemas.
ECHO (Sera aberto novamente ao finalizar o processo)
ECHO. 
ECHO.
taskkill /im explorer.exe /f
ECHO.
ECHO.
ECHO Processando arquivos, aguarde...
ECHO.

attrib -r -a -s -h /s /d %letter%:\*.*
del %letter%:\*.lnk .vbs. .js .com /f /q
ECHO.
ECHO ------------CONCLUIDO!------------
ECHO.
pause
start explorer
start explorer %letter%:
taskkill /im cmd.exe /f
