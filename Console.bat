@echo off
title 2Take1 External Console v2


setlocal EnableDelayedExpansion  


rem CHANGE COLOR HERE 
color 09
                                                       
echo        :::::::: ::::::::::: :::     :::    ::: ::::::::::   ::: 
echo      :+:    :+:    :+:   :+: :+:   :+:   :+:  :+:        :+:+:  
echo           +:+     +:+  +:+   +:+  +:+  +:+   +:+          +:+   
echo        +#+       +#+ +#++:++#++: +#++:++    +#++:++#     +#+    
echo     +#+         +#+ +#+     +#+ +#+  +#+   +#+          +#+     
echo   #+#          #+# #+#     #+# #+#   #+#  #+#          #+#      
echo ##########    ### ###     ### ###    ### ########## #######     
                                                            
cd %UserProfile%\AppData\Roaming\PopstarDevs\2Take1Menu
timeout /t 5

rem ### 2Take1 Logs ### (leave commented) ### 
start /B powershell -Command "& { Get-Content 2Take1Prep.log -Tail 1 -Wait;}"
start /B powershell -Command "& { Get-Content 2Take1Menu.log -Tail 1 -Wait;}"
start /B powershell -Command "& { Get-Content notification.log -Tail 1 -Wait;}"
start /B powershell -Command "& { Get-Content player.log -Tail 1 -Wait;}"

rem start /B powershell -Command "& { Get-Content net_event.log -Tail 1 -Wait;}"

start /B powershell -Command "& { Get-Content script_event.log -Tail 1 -Wait;}"


rem ### Keks Logs ### (leave commented) ### 
cd %UserProfile%\AppData\Roaming\PopstarDevs\2Take1Menu\scripts\kek_menu_stuff\kekMenuLogs

rem start /B powershell -Command "& { Get-Content 'Chat log.log' -Tail 1 -Wait;}"


rem ### 2Take1Script_Revive Logs ### (leave commented) ### 
cd %UserProfile%\AppData\Roaming\PopstarDevs\2Take1Menu\scripts\2Take1Script_Revive\LogFiles

rem start /B powershell -Command "& { Get-Content 2Take1Script.log -Tail 1 -Wait;}"

rem start /B powershell -Command "& { Get-Content Chat.log -Tail 1 -Wait;}"


rem ### 2Take1Script_Revive Logs ### (leave commented) ### 
cd %UserProfile%\AppData\Roaming\PopstarDevs\2Take1Menu\lualogs

rem start /B powershell -Command "& { Get-Content Moists_debug.log -Tail 1 -Wait;}"

rem start /B powershell -Command "& { Get-Content chat.txt -Tail 1 -Wait;}"


rem ########## READ ME ########## READ ME ########## READ ME ########## READ ME ########## READ ME ########## READ ME ##########  

rem ** READ how to change colors of the console here http://smallvoid.com/article/winnt-command-prompt-color.html **

rem ** uncomment lines with the start commands to add logging file in console. to stop logging, comment out the start commands by adding "rem" in front of it. EXAMPLE OFF="rem start /B powershell..." EXAMPLE ON="start /B powershell..." **

rem ** if you get an error code, read it, you likely dont have log to file on for the selected log file. if its crashing it may be due to log to file being off as well. **

rem ** by default it tails 2Take1Prep, 2Take1Menu, Notification, and Player log files. **

rem Made By Fleaz#6499