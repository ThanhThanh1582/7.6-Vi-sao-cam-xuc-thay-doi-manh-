@echo off
title DANG DANG BAI GIANG 8.6 LEN VERCEL
color 0A
echo =========================================================
echo   NOVA HOSPITAL - HE THONG DANG BAI GIANG AUTOMATION
echo =========================================================
cd /d "C:\Users\USER\Documents\antigravity\focused-pasteur"

echo.
echo [1/4] Dang kiem tra cac tep tin slide moi...
git add .

echo.
echo [2/4] Dang ghi nhan thay doi...
git commit -m "Update full 3 Tiet Bai 8.6 va Dashboard Vercel"

echo.
echo [3/4] Dang dong bo voi GitHub repository...
git pull origin main --rebase

echo.
echo [4/4] Dang truyen du lieu len Vercel...
git push origin main --force

echo.
echo =========================================================
echo   NEU HIEN THI: "Everything up-to-date" HOAC "main -> main"
echo   ---> DA DANG THANH CONG 100% LEN VERCEL!
echo =========================================================
echo.
pause
