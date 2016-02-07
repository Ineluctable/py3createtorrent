REM Add a shortcut to this file in %APPDATA%\Microsoft\Windows\SendTo or shell:sendto
REM Usage: py3createtorrent.py [options] <file-or-directory> <main-tracker-url> [<backup-tracker-url> ...]
REM 
REM py3createtorrent command line options
REM -P  = private torrent
REM -c  = comment
REM -s  = source string, used for cross-seeding
REM -f  = force / don't ask, just do it
REM -e  = exclude, -e "%~1\Thumbs.db" excludes the Thumbs.db file
REM -o  = output location for torrent file
REM %~1 = passed in file or directory name without quotes
set "CTPATH=C:\Windows\py.exe -3 "C:\Users\owner\Downloads\py3createtorrent\py3createtorrent.py""

REM loop from https://stackoverflow.com/questions/8666225/how-to-test-if-a-path-is-a-file-or-directory-in-windows-batch-file/8669636#8669636
for /f "tokens=1,2 delims=d" %%A in ("-%~a1") do if "%%B" neq "" (
    REM echo %1 is a folder
    cls
    %CTPATH% -P -c EXAMPLE -s EXAMPLE -f -e "%~1\Thumbs.db" -o "%~dp1%~n1.torrent" "%~1" ANNOUNCEURL
) else if "%%A" neq "-" (
    REM echo %1 is a file
    cls
    %CTPATH% -P -c EXAMPLE -s EXAMPLE -f -o "%~dp1%~n1.torrent" "%~1" ANNOUNCEURL
) else (
    echo WARNING: %1 does not exist
)

pause
