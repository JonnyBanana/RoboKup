# RoboKup
Simple script in dos that automatically backs up all the main folders and profiles in Windows.

</BR>

![Alt text](https://raw.githubusercontent.com/JonnyBanana/RoboKup/master/img/robokup.PNG)

</BR>

in my everyday life I often put my hands to customers' machines, and very often I have to do boring backups, but they are very important and if you are wrong they are trouble ...

I hate monotony in work and so I thought of creating a simple script that would do the job for me ....

Initially I wanted to use Powershell, but if I had done that the script would not have been compatible with the old systems, like Xp for example, and believe it or not, here in Italy many people use these old obsolete systems. I therefore decided to write a simple bat that copies all the main Windows file folders, but also browser profiles, ftp programs, etc.

The list of folders that Robokup copies is as follows:

Documents, Video, Pictures, Contacts, Downloads, Desktop, Chrome Profile, Notepad++ Profile,</BR>
Mozilla Priofile, Filezilla Profile, Outlook Profile, Thunderbird Profile, Favorites.

Obviously all the files (even the hidden ones), folders and folders are saved.

<h2>:soccer::soccer::soccer: The Goal of this Simple Script :soccer::soccer::soccer:</h2>


There are several scripts on the internet that do good or badly the same thing, but I decided to optimize some of these scripts so as to make the program compatible with all windows systems.

The Goals are:

- Compatible with all Windows systems (98 to Windows 10)
- Double click to start it on any system (with a ps1 file it would not be possible)
- It recognizes the Windows version by itself and retrieves the folders from the right path
- Copy all the main folders and profiles
- Name the backup folder with the name of the computer and insert today's date
- It recognizes the HardDrive name  by itself ( for example D:\ or E:\ )


</BR>

![Alt text](https://raw.githubusercontent.com/JonnyBanana/RoboKup/master/img/script.PNG)

</BR>

<h2>How to Use???</h2>

</BR>

Put the Robokup.bat file in an external memory stick or hard disk and double click, then just wait for the final message that confirms the success of the backup.

The paths of the folders may change depending on the language (especially for xp or earlier), so in the case adjust the paths before using the script, and since it is still in the test always check that the backup has been completely done, even if I have to say which in my tests has always given positive results ...

</BR>


![Alt text](https://raw.githubusercontent.com/JonnyBanana/RoboKup/master/img/bender.gif)

</BR>

<h2>Download with Git</h2>

</BR>

Download with GIT:

    git clone https://github.com/JonnyBanana/RoboKup
    
    cd Robokup


</BR>
