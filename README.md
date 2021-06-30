1.. Download the folder and save it to local with unzipped
2.. Open the dist/time_tracker_v_4 (First the app file which have the logo if it is not able to open or taking too much time you may go for time_tracker_v_4(terminal logo))
3.. The app will start executing
4.. Firstly you need to sign in with google. And then you are redirected to main timer window.	
5.. Now to start the timer. Click on the First Start button beside the Work-Development.
6.. After clicking on the start the Time tracking for all minute will be started.
7.. You can find log files into folder named time_tracker  
	LOG : Users/<user_name>/time_tracker/<date>/log
8.. Under the log folder you may find the 4 kind of log 
	- minute_drill_down : Every minute activity
	- 10minutes_reporting.log : Every 10 min history and also reports by EOD about total work 
	- timer_stopped_report.log : logs when timer is stopped 


# DATABASE STURCTURE

1..users
	- Users Information
	- Columns (ID, NAME, EMAIL, KEY)
	- Primary Key ID

2..10_minutes_report
	- To track user's work after every 10 minutes and when timer is stopped
	- Columns (ID, USERID, CREATED_AT, 10Minutes_STARTED_AT, 10Minutes_ENDED_AT, TIMER_TOTAL_TIME, WORK_TIME, IDLE_TIME)
	- Primary Key ID

3..Session_report
	- Log Out Report
	- Columns (ID, USERID, CREATED_AT, LOGIN_AT, LOGOUT_AT, TOTAL_TIME, WORK_TIME, IDLE_TIME)
	- Primary Key ID and Foreign Key UserID

4..Daily_Report
	- when time is stopped it will update work time and idle time of users
	- Columns (ID, USERID, CREATED_AT, WORK_STARTED_AT, WORK_STOPPED_AT, TOTAL_TIME, WORK_TIME, IDLE_TIME)
	- Primary Key ID and Foreign Key UserID

5..Hourly_Report 
	- To track user's work after every hour and when timer is stopped
	- Columns (ID, USERID, CREATED_AT, HOUR_STARTED_AT, HOUR_ENDED_AT, TOTAL_TIME, WORK_TIME, IDLE_TIME)
	- Primary Key ID

# Installation

pip install eel