@ echo off

rem # Windows will send an entry warning to Telegram

SET CURL=c:\temp\curl.exe

SET CLIENT=%USERNAME%
SET SERVER=%ComputerName%
netstat -na | find "3389" | find "ESTABLISHED" > RDPTMP
SET /p RDP= < RDPTMP
DEL RDPTMP

rem # USER ID
SET USER=1000

rem # Bot-Token BotFather "https://telegram.me/BotFather"

SET BOT_TOKEN=your_token

rem # Allert
  
%CURL% -k  -X GET "https://api.telegram.org/bot%BOT_TOKEN%/sendMessage?chat_id=%USER%&text=O client %CLIENT%@%USERDOMAIN% login to the server %SERVER% - %RDP% - Data:%date% %time% "
