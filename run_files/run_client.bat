@echo off
cd /d "C:\jars"
echo Starting G2_client...
java --module-path "C:\javafx-sdk-21.0.2\lib" --add-modules javafx.controls,javafx.fxml -jar G2_client.jar
if %errorlevel% neq 0 (
    echo.
    echo Error: Failed to start the application
    echo Error code: %errorlevel%
    pause
) else (
    echo Application closed successfully
)