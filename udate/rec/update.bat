SET rootPath=%SYS32Dir%\WinSCP.exe
SET sftpPath=ftp://�û���:����@��������ַ:�˿�
SET localFilePath=%~dp0
SET targetFilePath=/*.*
SET logPath=/log
SET logFileName=download_log_file.txt

cd %rootPath%
winscp.exe /console /command "option batch continue" "option confirm off" "open %sftpPath%" "option transfer binary" "get %targetFilePath% %localFilePath%" "exit" %logPath%=%logFileName%