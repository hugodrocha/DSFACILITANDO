@echo off
cls
:menu
cls
color 80

date /t

echo Computador: %computername%        Usuario: %username%

echo            MENU TAREFAS
echo  ==================================
echo * 1. Esvaziar a Lixeira            * 
echo * 2. Fazer Backup                  *
echo * 3. Escanear Disco Local          *
echo * 4. Painel de Controle            *
echo * 5. Sair                          * 
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if "%opcao%" equ "1" goto opcao1
if "%opcao%" equ "2" goto opcao2
if "%opcao%" equ "3" goto opcao3
if "%opcao%" equ "4" goto opcao4
if "%opcao%" equ "5" goto opcao5
goto opcao6

:opcao1
cls
echo Esvaziando a Lixeira...
rd /S /Q %systemdrive%\$Recycle.Bin
echo ==================================
echo *      Lixeira Esvaziada          *
echo ==================================
pause
goto menu

:opcao2
cls
echo Fazendo Backup...
xcopy /E /I "C:\Users\%username%\Documents" "C:\Users\%username%\Desktop\Backup"
echo ==================================
echo *      Backup Concluido           *
echo ==================================
pause
goto menu

:opcao3
cls
echo ==================================
echo *     Escaneamento de Disco       *
echo ==================================
chkdsk c:
pause
goto menu

:opcao4
cls
echo Abrindo Painel de Controle...
control.exe
pause
goto menu

:opcao5
cls
echo Saindo do script. Ate a proxima!
exit

:opcao6
cls
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu
