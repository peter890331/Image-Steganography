@echo off
setlocal
Title 圖種製作工具 (Image Steganography)

echo ======================================================================
echo        圖種製作工具 (Image Steganography)
echo ======================================================================
echo 使用說明：
echo 當提示輸入路徑時，請直接將檔案「拖曳」進此視窗，並按下 Enter 確認。
echo ======================================================================
echo.

:: 1. 設定圖片檔
set /p imgPath="[步驟 1/3] 請拖入圖片檔 (jpg/png)，並按下 Enter 確認: "

:: 2. 設定壓縮檔
set /p zipPath="[步驟 2/3] 請拖入壓縮檔 (zip/rar/7z)，並按下 Enter 確認: "

:: 3. 設定輸出相對路徑和檔名
echo.
set /p outName="[步驟 3/3] 請輸入輸出相對路徑和檔名 (如 new.jpg): "

echo.
echo 正在合併檔案...
echo ---------------------------------------------

:: 執行合併指令
copy /b %imgPath% + %zipPath% "%outName%"

echo ---------------------------------------------
if %errorlevel%==0 (
    echo.
    echo [成功] 圖種已製作完成！
) else (
    echo.
    echo [失敗] 發生錯誤，請檢查路徑或檔名。
)

echo.
pause