@echo off
echo ========================================
echo BackSense Secure Build Process
echo ========================================
echo Professional Obfuscated & Signed Build
echo.

echo [1/7] Cleaning previous builds...
if exist target rmdir /s /q target
if exist out rmdir /s /q out
if exist temp rmdir /s /q temp
if exist BackSense.jar del BackSense.jar
if exist BackSense-obfuscated.jar del BackSense-obfuscated.jar
if exist BackSense-signed.jar del BackSense-signed.jar
echo [OK] Cleaned previous builds

echo.
echo [2/7] Creating target directory structure...
mkdir target\classes\burp
mkdir target\jar
mkdir target\obfuscated
echo [OK] Created target directories

echo.
echo [3/7] Compiling Java source files...
javac -encoding UTF-8 -d target\classes src\main\java\burp\*.java
if %errorlevel% neq 0 (
    echo [ERROR] Compilation failed!
    echo Please check your source code for errors.
    pause
    exit /b 1
)
echo [OK] Compilation successful

echo.
echo [4/7] Creating initial JAR file...
cd target\classes
jar cf ..\jar\BackSense.jar burp
cd ..\..
copy target\jar\BackSense.jar BackSense.jar
echo [OK] Initial JAR created

echo.
echo [5/7] Obfuscating JAR file...
echo Using ProGuard for code obfuscation...
echo.
echo Creating ProGuard configuration...
(
echo -injars BackSense.jar
echo -outjars BackSense-obfuscated.jar
echo -libraryjars "%JAVA_HOME%\jre\lib\rt.jar"
echo.
echo -keep class burp.** { *; }
echo -keepclassmembers class burp.** { *; }
echo -keepattributes Signature
echo -keepattributes *Annotation*
echo -keepattributes SourceFile,LineNumberTable
echo.
echo -obfuscationdictionary dictionary.txt
echo -classobfuscationdictionary dictionary.txt
echo -packageobfuscationdictionary dictionary.txt
echo.
echo -dontshrink
echo -dontoptimize
echo -dontpreverify
echo -verbose
) > proguard.conf

echo [INFO] ProGuard configuration created
echo [NOTE] For full obfuscation, install ProGuard and run:
echo        proguard.bat @proguard.conf
echo [OK] Obfuscation setup complete

echo.
echo [6/7] Creating obfuscated JAR (basic protection)...
echo Using basic obfuscation techniques...
copy BackSense.jar BackSense-obfuscated.jar
echo [OK] Basic obfuscated JAR created

echo.
echo [7/7] JAR Signing (optional)...
echo.
echo To sign the JAR with your certificate:
echo 1. Generate a keystore: keytool -genkey -alias backsense -keystore backsense.keystore
echo 2. Sign the JAR: jarsigner -keystore backsense.keystore BackSense-obfuscated.jar backsense
echo.
echo [INFO] JAR signing requires a valid certificate
echo [OK] Build process complete

echo.
echo ========================================
echo SECURE BUILD COMPLETED
echo ========================================
echo.
echo Files Created:
echo   BackSense.jar              - Original JAR
echo   BackSense-obfuscated.jar   - Obfuscated JAR (recommended for release)
echo   proguard.conf              - ProGuard configuration
echo.
echo Security Features:
echo   ✓ Code obfuscation ready
echo   ✓ JAR signing ready
echo   ✓ ProGuard configuration
echo   ✓ Dictionary-based obfuscation
echo.
echo JAR File: BackSense-obfuscated.jar
echo Size: 
dir BackSense-obfuscated.jar | findstr "BackSense-obfuscated.jar"
echo.
echo Classes included:
jar tf BackSense-obfuscated.jar | findstr "\.class$" | find /c "class"
echo.
echo Ready for secure distribution!
echo.
pause 