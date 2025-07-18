@echo off
echo ========================================
echo BackSense Burp Suite Extension Builder
echo ========================================
echo Professional Build Process v2.0
echo.

echo [1/5] Cleaning previous builds...
if exist target rmdir /s /q target
if exist out rmdir /s /q out
if exist temp rmdir /s /q temp
if exist BackSense.jar del BackSense.jar
echo [OK] Cleaned previous builds

echo.
echo [2/5] Creating target directory structure...
mkdir target\classes\burp
mkdir target\jar
echo [OK] Created target directories

echo.
echo [3/5] Compiling Java source files...
javac -encoding UTF-8 -d target\classes src\main\java\burp\*.java
if %errorlevel% neq 0 (
    echo [ERROR] Compilation failed!
    echo Please check your source code for errors.
    pause
    exit /b 1
)
echo [OK] Compilation successful

echo.
echo [4/5] Creating JAR file...
cd target\classes
jar cf ..\jar\BackSense.jar burp
cd ..\..
copy target\jar\BackSense.jar BackSense.jar
echo [OK] JAR created successfully

echo.
echo [5/5] Verifying build...
echo.
echo ========================================
echo BUILD COMPLETED SUCCESSFULLY
echo ========================================
echo.
echo Directory Structure:
echo   src\main\java\burp\     - Source files
echo   target\classes\burp\     - Compiled classes
echo   target\jar\              - JAR output
echo   BackSense.jar            - Final JAR (copied to root)
echo.
echo JAR File: BackSense.jar
echo Size: 
dir BackSense.jar | findstr "BackSense.jar"
echo.
echo Classes included:
jar tf BackSense.jar | findstr "\.class$" | find /c "class"
echo.
echo Main class verification:
jar tf BackSense.jar | findstr "BurpExtender.class"
echo.
echo Ready for Burp Suite!
echo.
pause
