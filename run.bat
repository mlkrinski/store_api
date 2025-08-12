@echo off
echo ==============================
echo  Dev Tools
echo ==============================
echo 1 - Run API
echo 2 - Install pre-commit
echo 3 - Pytest
echo ==============================
set /p choice="Escolha uma opcao: "

if "%choice%"=="1" (
    uvicorn store.main:app --reload
) else if "%choice%"=="2" (
    poetry run pre-commit install
) else if "%choice%" == "3" (
    poetry run pytest
) else (
    echo Opcao invalida.
)
