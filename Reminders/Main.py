# Author: Phil Thiessen
# Date: 2020-02-14

import tkinter
from tkinter import messagebox
import configparser
from datetime import datetime
import os

# hide main window
root = tkinter.Tk()
root.withdraw()

# messagebox.showinfo("title", 'info')

config = configparser.ConfigParser()
config_path = "C:\Scripts\Reminders\config.ini"
config.read(config_path)
time = config.get("Schedule", "time")  # time after which you should submit TC, in 24h e.g. 5:21pm = 1721
lastRun = config.get('Schedule', 'lastRun')
submit = int(config.get('Schedule', 'submit'))  # submit is day of week you would like to submit TC on, Mon = 1
browser = config.get('System', 'browser')
TC_link = ' https://ebs.prod.viasat.com/OA_HTML/AppsLogin'

TC_lauch = browser + TC_link

time = int(time)
now = int(datetime.now().strftime("%H%M"))  # current time in 24h e.g. 5:21pm = 1721

day = datetime.date(datetime.today())
weekday = datetime.isoweekday(datetime.today())  # current day of the week as int, Mon = 1

# Time entry query
if str(lastRun) != str(day) and weekday in range(2, submit+1):
    answer = messagebox.askquestion("Timecard Reminder", "Have you entered time worked yesterday?", icon="warning")
    if answer == 'no':
        os.system(TC_lauch)
    else:
        print("Time already entered")

# TC submit query
if weekday == submit:
    if now >= time:
        answer = messagebox.askquestion("Timecard Submit Reminder", "Have you submitted your timecard today?", icon='warning')
        if answer == 'no':
            os.system(TC_lauch)
        else:
            print("Time already submitted")

# print(lastRun)  # debug
# print(day)  # debug
config.set("Schedule", 'lastRun', str(day))  # set last run date to today
with open(config_path, "w") as file:
    config.write(file)
