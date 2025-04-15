#### Beginning the process
The process began by creating the vm as user SysAdmin (sysadmin), once the vm was created and setup, all department groups were created.

![[Pasted image 20250414193020.png]]
>1.1 | Above shows a screenshot from the /etc/group file

Once all groups were created, all the staff user accounts were created using the command

```useradd -M -g {groupname} {username}```

Adding all users to their respective groups was completed in the process of creating the users, as seen in graphic 1.1.

All users were then added to the sudoers file

![[Pasted image 20250414193559.png]]
> 1.2 | Above shows a screenshot from the /etc/sudoers file

Using a script I built, i then created the required file structure stated in /zoo, using the format of

```BASH
mkdir executives
mkdir management
#And so on, allt he way to to volunteers

cd executives
touch annual_report_2024.pdf
touch board_meeting_minutes.txt
cd ..
# Done for every file and directory needed in each respective folder
```

Below is a screen recording of the /zoo file structure.

![[Desktop 2025.04.14 - 19.56.01.02.mp4]]
> 1.3 | Above shows a screen recording of a directory walk of the /zoo directory

I then ensured all users had adequate permissions to access all files and folders in the directory. As per the request that every department and user have access to the full system for the time being, they were granted 777 permissions to all directories, they also own their own respective directories, as seen below.

![[Pasted image 20250414200646.png]]
> 1.4 | Above shows a screenshot of the folders in /zoo, with their user and group owners

# What was learned?

Throughout this assignment, I learnt that sometimes one little typo can mean the difference between a job well done, and accidentally creating all the files in the root directory (seriously it took like 5 minutes to clean up that mess). I also solidified my understanding of linux permissions, not only drwx, but also what the numbers ment in terms of permissions, (eg, the difference between 777, 755, etc.). I was also able to furthermore understand how commands such as chmod, chown, and chgrp worked, as I had not had much practice with them before this point.