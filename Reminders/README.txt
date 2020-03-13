This tool was set up quickly and so isn't necessarily very platform agnostic. 

Line 14 contains the path to the config.ini file.
You could modify line 14 to point to where you store the ini file our you could make it relative
if you're storing the file in the same location as the scipt. 

In the config make sure to modify the browser key to point to your default browser exe location. 

"lastrun" key must be populated with something but it doesn't matter what for the first run. 
After that it will update to the last time the script ran. 

"submit" is the day you want to submit the TC. I have my system set up so that Moday is the first day of the week (eg. = 1)
If your system is different or you want to submit on a different day, you'll have to modify that. 
Hint: you can use "datetime.isoweekday(datetime.today())" to see what day it is today and count up or down from that to see what day of the week is 1 on your system. 

"time" key is after what time you'd like to be reminded to submit, in 24 hour format without punctuation (eg 5:22PM = 1722)

In order to get the script to run every time you turn the PC on, create a shortcut to the Reminders.bat file and place it in your "Startup" folder
Default location of that folder is: "C:\Users\[username]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" 

You'll also may have to modify the Reminders.bat file to point to where you stored the Main.py script file.
Or just put the script folder in the default directory: "C:Scripts\Reminders\..."

In order to get the script to run at any other time, you'll have to use the Windows Task Scheduler (eg. to run after 5pm on Friday)
This is also useful if you don't turn your PC off at night, and so the contents of the Startup folder don't run in the morning. 
Just search for Task Scheduler in the Windows Home Menu, then follow the prompts for "Create Basic Task" to set that up however you like. 



Known Bugs:
If you already have your browser open, the script will open the TC page to a new tab and exit cleanly.
If you don't have your browswer open, it'll open a new window and then the scipt hangs in the background, forcing you to close it manually. 
For this reason it can be good to throw your default browser also into your startup folder. 

If the script doesn't exit cleanly, the "lastrun" key doesn't get updated, so if the PC were restarted in the same day it would prompt the user again. 
