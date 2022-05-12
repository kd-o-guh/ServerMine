Welcome to SkyFactory One Server Guide

If you are looking for the guide for updating your server from an older version see UPDATE-GUIDE.txt

In this download you'll find two scripts one for Windows, Linux and Mac which will run the Forge Installer
to get the needed files for you! Like magic!

Hardware Notes:
	- Recommended Min Memory is 4GB (You can run it on 2GB but it's not ideal)
	- A modern processor/system which would be running the server.

To get your server up and running just run the following:

- Windows:
	- Run Install.bat
- Linux & Mac:
	- Run Install.sh

Once the script finishes you'll be able to start your server. Please note the server does use a fair
amount of RAM is is taxing on the CPU; so please ensure you have a system capable to run a server.
Especially if you are planning to have a lot users on the server.

Don't forget you'll need to accept/create the EULA file for the server to start!
Also you'll find a `settings` file which you can edit the Java Options used for starting the server
make sure you edit the one for your system and that they are valid.

NOTE: If you are using Java 14 or above and on Windows can you please use the ServerStartJava14.bat script. The Linux script should auto-manage any changes for you. Otherwise...
If you are using Java 14. Please edit the settings file to remove all the "JAVA_PARAMETERS" so then it's an empty string I.E. ""
On Windows you'll need to edit the settings.bat on Linux/Mac you'll need to edit settings.sh.
BIGGER NOTE: Some of the mods used are not supported in Java 16+ so please stick to Java 14 (Or lower) Thanks! :)

To start the server you can perform the following:

- Windows: (Only pick one of the options .bat file is prefered)
	- Run the Start.bat Script.
	- Double Click the Forge Jar.
- Linux & Mac:
	- Run the Start.sh Script.

NOTE: The server will crash first time with the EULA not being accepted. You can run the server let it crash then
edit the file to change "false" to "true". Alternatively copy the following into a file called "eula.txt" in the root directory (same place as this file). You'll need to change the false to true yourself:

#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://account.mojang.com/documents/minecraft_eula).
eula=false

You don't have to use the Start Scripts at all; if you know what you are doing by all means create your
own scripts to run the server. It's your server!

But thank you from the team for download and playing the SkyFactory One Pack. If you find any issues or
bugs please file them at our tracker: https://github.com/DarkPacks/SkyFactory-One/issues

If you need any help for creating player islands please read README_ISLANDS.txt.