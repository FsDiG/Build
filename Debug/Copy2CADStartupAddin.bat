@echo off
setlocal

echo 本程序将PackageContents.xml拷贝到AutoCAD的插件加载路径下实现自动加载插件
 
REM 设置源文件和目标目录
set "sourceFile=PackageContents.xml"
set "targetDir=C:\ProgramData\Autodesk\ApplicationPlugins\Fs.DiG.CAD.Launcher.bundle"

REM 检查源文件是否存在
if not exist "%sourceFile%" (
    echo 源文件 %sourceFile% 不存在.
    exit /b 1
)

REM 创建目标目录（如果不存在）
if not exist "%targetDir%" (
    mkdir "%targetDir%"
)

REM 拷贝并覆盖文件
copy /y "%sourceFile%" "%targetDir%"

REM 检查拷贝结果
if %errorlevel% neq 0 (
    echo 文件拷贝失败.
    exit /b 1
) else (
    echo 文件拷贝成功.倒计时3s关闭窗体
    timeout /t 3 >nul
)

endlocal
exit /b 0

