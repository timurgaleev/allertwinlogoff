@ echo off

rem # Windows will send an logoff warning to Telegram

SET CURL=c:\temp\curl.exe

SET CLIENT=%USERNAME%
SET SERVER=%ComputerName%

rem # USER ID
SET USER=1000

rem # Bot-Token BotFather "https://telegram.me/BotFather"

SET BOT_TOKEN=your_token


rem # Allert

rem echo " %CURL% -k -X GET https://api.telegram.org/bot%BOT_TOKEN%/sendMessage?chat_id=%USER%&text=O client %CLIENT% disconnect to the server 
%SERVER%"
  
%CURL% -k  -X GET "https://api.telegram.org/bot%BOT_TOKEN%/sendMessage?chat_id=%USER%&text=O client %CLIENT%@%USERDOMAIN% disconnect to the server 
%SERVER%  Data:%date% %time% "


