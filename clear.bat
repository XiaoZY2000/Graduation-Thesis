@echo off
echo === Cleaning auxiliary files ===

del /Q *.aux 2>nul
del /Q *.bbl 2>nul
del /Q *.blg 2>nul
del /Q *.log 2>nul
del /Q *.toc 2>nul
del /Q *.lof 2>nul
del /Q *.lot 2>nul
del /Q *.out 2>nul
del /Q *.nav 2>nul
del /Q *.snm 2>nul
del /Q *.fls 2>nul
del /Q *.fdb_latexmk 2>nul
del /Q *.synctex.gz 2>nul
del /Q *.dvi 2>nul
del /Q *.xdv 2>nul
del /Q *.vrb 2>nul
del /Q *.brf 2>nul
del /Q *.spl 2>nul

echo === Clean completed! ===
pause
