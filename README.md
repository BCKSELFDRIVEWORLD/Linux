# Linux 

pwd = you can check the current path

ls -la = this shows all files includes hidden files (begin ".")

ls --help = its helps :)

mkdir = folder


touch = file

"vi" visual editor(idk)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Basically, vi has 2 different modes: Command and Insert modes:
Command Mode: This mode allows you to use commands in order to interact with the file. For instance, go to a certain line of the file, delete certain lines, etc...
Insert Mode: This mode allows you to insert text into the file.
By default, vi opens with the command mode activated. In order to switch to the insert mode, you will have to type the character i.
Use the :w sequence first, in order to write the latest changes. After this, you will be able to exit the editor using the sequence :q.
Use the sequence :q!. This will exit the editor, ignoring the last changes to the file.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
