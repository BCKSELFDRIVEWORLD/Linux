# Linux 

pwd = you can check the current path


ls --help = its helps :)

mkdir = folder


touch = file
#  Command "mv"

The command mv in Linux stands for move, so it's quite self-explanatory. It allows you to move files or folders from one location to another. For instance, let's try the following commands. First off, let's make sure we are on the directory of the file/folder we want to move.

 mv <file/folder we want to move> <destination>

# Command "cp"

In Linux systems, the command cp stands for copy. So basically, it allows you to copy a file or a folder (or multiples) from one location to another one.

cp <file/folder we want to copy> <name of the new file/folder>

in order to copy a folder, you will need to use the -r argument.

cp -r my_scripts/ my_scripts_copy/

# Command "rm"

So, maybe it's time to clean up all the mess we have created, don't you think? In Linux, the rm command stands for remove. So, let's try to remove some of the files and folders that we have created lately with the following commands.

rm <file to remove>

Now, for removing folders, it works exactly the same as with the cp command: you need to add a -r flag to the command. Let's try to remove the copy folder we created before.

rm -r my_scripts_copy



"vi" visual editor(idk)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Basically, vi has 2 different modes: Command and Insert modes:
Command Mode: This mode allows you to use commands in order to interact with the file. For instance, go to a certain line of the file, delete certain lines, etc...
Insert Mode: This mode allows you to insert text into the file.
By default, vi opens with the command mode activated. In order to switch to the insert mode, you will have to type the character i.
Use the :w sequence first, in order to write the latest changes. After this, you will be able to exit the editor using the sequence :q.
Use the sequence :q!. This will exit the editor, ignoring the last changes to the file.

# Permissions 

-la flag ???

Basically, the -la flag allows us to see some basic data related to the files or folders, like the permissions of the files/folders, their creation date/time, etc.

-rw-r--r-- 1 user user 2203 Jul 23 23:26 move_bb8_square.py

For now, let's just focus on the first part, which is rw-r--r--. These are the PERMISSIONS of the file.

Each file or directory has 3 permissions types:

read: The Read permission refers to a user's ability to read the contents of the file. It is stated with the character r.

write: The Write permission refers to a user's ability to write or modify a file or directory. It is stated with the character w.

execute: The Execute permission affects a user's ability to execute a file or view the contents of a directory. It is stated with the character x.

On the other hand, each file or directory has three user-based permission groups:

owner: The Owner permissions apply only to the owner of the file or directory, and will not impact the actions of other users. They are represented in the first 3 characters.

group: The Group permissions apply only to the group that has been assigned to the file or directory, and will not affect the actions of other users. They are represented in the middle 3 characters.

all users: The All Users permissions apply to all other users on the system, and this is the permission group that you want to watch the most. They are represented in the last 3 characters.

We already know the 2 last parameters. As for the groups, you can specify them using the following flags:

u: Owner
g: Group
o: Others
a: All users. For all users, you can also leave it blank, as we did in the example command you executed before.

So, applying all this to our file, we can say that the owner of the file (in this case, it's us) has read (r) and write (w) permissions, and the group and the rest of users have only read (r) permissions.

So, as you may have already deduced, the only permissions that apply are the ones that are explicitly specified with their character. If they appear with a - symbol, it means that the permissions are not applied.

From this, we can see that this file has no execution permissions. And this, if we want to actually execute the file, could be quite a problem, don't you think? Then... how can we change this?

# Bash scripts

Linux has its own scripts. They are commonly know as bash scripts.

Basically, a bash script is a regular text file that contains a series of commands. 

These commands are a mixture of commands you would normally type yourself on the command line (such as the ones we have been reviewing, cd, ls, or cp) and also commands we could type on the command line, but generally wouldn't (you'll discover these over the next few pages). 

An important point to remember though is:

Anything you can run normally on the command line can be put into a script and it will do exactly the same thing. Similarly, anything you can put into a script can also be run normally on the command line and it will do exactly the same thing.

touch bash_script.sh

#!/bin/bash

echo Hello there, Developers!

First, as you can see, the file extension is .sh

Usually, this is the extension you will always use when you create a new bash script. 

Second, note that the script starts with the line #!/bin/bash.

All bash scripts will start with this special line. 






# Environment Variables

Ortam değişkeni, çalışan işlemlerin bilgisayarda nasıl davranacağını etkileyebilecek, dinamik olarak adlandırılmış bir değerdir

Bir sürecin çalıştığı ortamın parçalarıdırlar. Örneğin, çalışan bir işlem, geçici dosyaları depolamak için uygun bir konum bulmak amacıyla TEMP ortam değişkeninin değerini sorgulayabilir

, komut isteminin Kabuğunun rengini tanımlayan PS1 değişkeni. 

Ayrıca, ortam değişkenleri Robotik Geliştirmede ve ROS'ta sıklıkla kullanılmaktadır.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Command "export"
Basit bir ifadeyle, yeni bir Shell oturumu açtığınızda ortam değişkenleri ayarlanır. Shell oturumu sırasında değişken değerlerinden herhangi birini değiştirirseniz, Shell'in bu değişikliği alma yolu yoktur.

The export command, on the other hand, provides the ability to update the current Shell session about the change you made to the exported variable

Aslında önceki bölümde yaptığımız da tam olarak buydu: PS1 değişkenini Export komutunu kullanarak değiştirdik ve .bashrc betiğine ekledik.

Daha sonra, source komutunu kullanarak .bashrc betiğini çalıştırdığımızda, dışa aktarma komutu da yürütüldü, böylece PS1 ortam değişkeni güncellendi.


# Setting a variable with export

Let's focus for a moment on the ROS_PACKAGE_PATH environment variable. This variable is used by ROS in order to get the possible locations for any ROS packages. As you can see, we have the path "/home/user/catkin_ws/src", where our package move_bb8_pkg is located. So, what would happen if I remove this path from the variable? Would ROS still be able to find it? Let's find out!

export ROS_PACKAGE_PATH="/home/simulations/public_sim_ws/src:/opt/ros/kinetic/share"

# Visualize processes

htop:
-
The htop command is an improved version of top (which is the classical command to visualize processes). 

Usually, it’s not installed by default on most Linux distributions.

We can see several pieces of useful data here.

The whole window above can be split up into three sections for the ease of our understanding. 

The top-left section comprises the CPU and memory usage information. 

The top-right section provides info about load average and uptime. 

The rest of the information contains real-time data of processes with stats like priority, CPU and memory consumption, etc.

ps faux
-
At first glance, there are also many processes here.

But remember, we have the grep tool for that! However, all the processes you are seeing now (like the ones related to Gazebo) have been automatically launched by the Academy and you won't be able to interact much with them.

# Kill processes

 Ctrl + C
 -
 Ctrl + C is used to kill a process with the signal SIGINT, and can be intercepted by a program (in our case, it's test_process.py) so that it can clean itself up before exiting (in our case, stop the robot), or not exit at all. It depends on how the application is built.

 So, on the Shell where you have the Hello there! stream, click Ctrl + C on your keyboard. You will get something similar to the image below, and you will be able to type again on the Shell.


Ctrl + Z
-

Ctrl + Z is used for suspending a process by sending it the signal SIGSTOP, which cannot be intercepted by the program. 

Basically, it sends SIGTSTOP to a foreground application, effectively putting it in the background, suspended. But then... does this means that the process will still be there? We'll check it in a moment!

Command "kill"
-

In the previous section, we sent a foreground process to the background, using the command Ctrl+Z. 

But this opened up a new question: how can I stop a process that is running in the background? 

Well, for this case, Linux provides the kill command. It's very easy to use, but you need to know the Process ID (PID) of the process you want to terminate.

The PID of the process is the number that appears in the second column. In the case of our process, it is 26244, but in your case, it will probably be different. So now, in order to kill, you just have to execute the following command:

kill 26244

Well, the problem here is that when you use Ctrl + Z, besides sending the process to the background, you are also suspending it (sending a SIGSTOP signal). So, any signal we send now to the process (for instance, to kill it) will be ignored by the process. So... what can we do?

SSH protocol
-
ssh <user>@<host>

ssh student@127.0.0.1

ps faux | grep ssh
-
![image](https://github.com/BCKSELFDRIVEWORLD/Linux/assets/146545020/dbf01d4e-dc0e-4650-81b9-d2d404118b42)



# Commands "apt", "sudo"

Linux uses a dpkg packaging system. A packaging system is a way to provide programs and applications for installation. This way, you don’t have to build a program from the source code.

APT (Advanced Package Tool) is the command line tool to interact with this packaging system.You can use it to find and install new packages, upgrade packages, clean packages, etc.

apt-get basically works on a database of available packages. If you don’t update this database, the system won’t know if there are newer packages available or not. In fact, this is the first command you need to run in any Linux system after a fresh install. So... let's update our database!


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
