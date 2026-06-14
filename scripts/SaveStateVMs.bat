@echo off
REM Indicar os nomes das VMs EXACTAMENTE como aparecem no VBox
set VMs=5104-Debian01 5104-Debian02 5104-Alma01 5104-Alma02 5104-VyOS-Router3E 5104-VyOS-Router2E 5104-VyOS-Router1E 5104-VyOS-Router3D 5104-VyOS-Router2D 5104-VyOS-Router1D 5104-VyOS-RouterC

REM Tempo em segundos de pausa entre arranques
set PAUSA=10

REM Caminho completo para VBoxManage.exe
set VBOXM=CProgram FilesOracleVirtualBoxVBoxManage.exe

for %%i in (%VMs%) do (
    echo A guardar o estado de %%i...
    %VBOXM% controlvm %%i savestate
    timeout t %PAUSA% nobreak
)
echo Todos os pedidos de guardar estado foram enviados!
pause