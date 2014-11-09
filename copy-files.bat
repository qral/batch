REM mount smb share
start C:\WINDOWS\system32\wscript.exe C:\Utilities\invis.vbs C:\Utilities\c4ebmnt.bat

REM 6 sec sleep
PING 1.1.1.1 -n 1 -w 6000 >NUL

rem PATH from | PATH to | which files from 1st PATH
robocopy c:\notes\data\  Z:\BCDR_files-to-backup\  CZZ6230A.ID names.nsf desktop8.ndk bookmark.nsf journal.nsf password.nsf notes.ini
robocopy c:\Users\IBM_ADMIN\Favorites\Links\  Z:\BCDR_files-to-backup\  my_doc.xls  TMR-tivoli-shell.txt access.txt
robocopy C:\Users\IBM_ADMIN\Documents\!myIBM\_app\AutoHotkey111403\ Z:\BCDR_files-to-backup\ AutoHotkey.ahk
PAUSE
