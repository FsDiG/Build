@echo off
setlocal

echo ������PackageContents.xml������AutoCAD�Ĳ������·����ʵ���Զ����ز��
 
REM ����Դ�ļ���Ŀ��Ŀ¼
set "sourceFile=PackageContents.xml"
set "targetDir=C:\ProgramData\Autodesk\ApplicationPlugins\Fs.DiG.CAD.Launcher.bundle"

REM ���Դ�ļ��Ƿ����
if not exist "%sourceFile%" (
    echo Դ�ļ� %sourceFile% ������.
    exit /b 1
)

REM ����Ŀ��Ŀ¼����������ڣ�
if not exist "%targetDir%" (
    mkdir "%targetDir%"
)

REM �����������ļ�
copy /y "%sourceFile%" "%targetDir%"

REM ��鿽�����
if %errorlevel% neq 0 (
    echo �ļ�����ʧ��.
    exit /b 1
) else (
    echo �ļ������ɹ�.����ʱ3s�رմ���
    timeout /t 3 >nul
)

endlocal
exit /b 0

