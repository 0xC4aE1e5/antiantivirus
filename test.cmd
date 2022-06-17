curl.exe https://ninite.com/chrome/ninite.exe -o test.exe
call main.cmd test.exe testout
cd testout
call run.cmd
cd ..
rd testout /s /q
del test.exe