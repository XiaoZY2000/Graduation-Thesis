@echo off
echo === Step 1: pLaTeX (ptex2pdf) first pass ===
ptex2pdf -u -l main.tex

echo === Step 2: pBibTeX ===
pbibtex main

echo === Step 3: pLaTeX (ptex2pdf) second pass ===
ptex2pdf -u -l main.tex

echo === Step 4: pLaTeX (ptex2pdf) final pass ===
ptex2pdf -u -l main.tex

echo === Build completed! ===
pause
