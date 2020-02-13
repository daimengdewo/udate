SET rootPath=%SYS32Dir%\WinSCP.exe
SET sftpPath=ftp://用户名:密码@服务器地址:端口
SET localFilePath=%~dp0
SET targetFilePath=/*.*
SET logPath=/log
SET logFileName=download_log_file.txt

cd %rootPath%
winscp.exe /console /command "option batch continue" "option confirm off" "open %sftpPath%" "option transfer binary" "get %targetFilePath% %localFilePath%" "exit" %logPath%=%logFileName%