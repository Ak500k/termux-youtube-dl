#!/system/bin/sh

# Colors
# ----------------------------------------
 BL='\e[01;90m' > /dev/null 2>&1; # Black
 R='\e[01;91m' > /dev/null 2>&1; # Red
 G='\e[01;92m' > /dev/null 2>&1; # Green
 Y='\e[01;93m' > /dev/null 2>&1; # Yellow
 B='\e[01;94m' > /dev/null 2>&1; # Blue
 P='\e[01;95m' > /dev/null 2>&1; # Purple
 C='\e[01;96m' > /dev/null 2>&1; # Cyan
 W='\e[01;97m' > /dev/null 2>&1; # White
 LG='\e[01;37m' > /dev/null 2>&1; # Light Gray
 N='\e[0m' > /dev/null 2>&1; # Null
 L='\033[7m' > /dev/null 2>&1; #Lines
 X='\033[0m' > /dev/null 2>&1; #Closer
# ----------------------------------------
 clear
 echo -e "------------------------------------------------\n"

 echo -e $R"        _    _    ____   ___   ___"$N
 sleep 0.3
 echo -e $R"       / \  | | _| ___| / _ \ / _ \ "$N
 sleep 0.3
 echo -e $R"      / _ \ | |/ /___ \| | | | | | |"$N
 sleep 0.3
 echo -e $R"     / ___ \|   < ___) | |_| | |_| |"$N
 sleep 0.3
 echo -e $R"    /_/   \_\_|\_\____/ \___/ \___/"$N

 echo -e "\n\n------------------------------------------------\n"
 sleep 1.5

 echo -e $Y$L"\n Updating... \n"$N
 pkg update && apt upgrade -y

 clear

echo -e "\n--------------------------------------------------------\n"

echo -e $R"__   __          _         _                ____  _"$N
sleep 0.5
echo -e $R"\ \ / /__  _   _| |_ _   _| |__   ___      |  _ \| |"$N
sleep 0.5
echo -e $R" \ V / _ \| | | | __| | | | '_ \ / _ \_____| | | | |"$N
sleep 0.5
echo -e $R"  | | (_) | |_| | |_| |_| | |_) |  __/_____| |_| | |___"$N
sleep 0.5
echo -e $R"  |_|\___/ \__,_|\__|\__,_|_.__/ \___|     |____/|_____|"$N

echo -e "\n\n--------------------------------------------------------"


 sleep 1.5


 echo -e $Y$L"\n YouTube-dl Installer By " $R" Ak500 \n"$N

 echo -e $Y$L"\n Installing python... "$N

		apt install python -y
		clear
 sleep 0.2		

 echo -e $Y$L"\n Installing ffmpeg... \n"$N

		pkg install ffmpeg -y
		clear
		

echo -e $Y$L"\n Updating System...\n"$N

                pkg update && apt upgrade -y
                apt --fix-broken install
		clear


 sleep 0.2		

 echo -e $Y$L"\n Installing wget... \n"$N

		 pkg install wget -y
		 clear

 sleep 0.2

 echo -e $Y$L"\n Installing YouTube-dl... \n"$N 

		pip install yt-dlp

 clear

 echo -e $Y$L"\n Setting up configs... " $G" Ak500 \n"$N

 sleep 2

 echo -e $Y$L"\n Creating Youtube folder... \n"$N

 mkdir /data/data/com.termux/files/home/storage/shared/YouTube
	
 sleep 1.5


 echo -e $Y$L"\n Creating youtube-dl config... \n"$N
		rm -rf /data/data/com.termux/files/home/.config/yt-dlp
		mkdir -p ~/.config/yt-dlp
 sleep 1.5

 echo -e $Y$L"\n Getting config file... \n"$N

 wget https://raw.githubusercontent.com/Ak500k/termux-ydl/main/config -P /data/data/com.termux/files/home/.config/yt-dlp
 
 cd /data/data/com.termux/files/home/.config/yt-dlp
 chmod +x config

 sleep 1

 echo -e $Y$L"\n Creating bin folder... \n"$N

		mkdir ~/bin

 sleep 1.5

 echo -e $Y$L"\n Getting files...\n"$N
 rm -rf /data/data/com.termux/files/home/bin/termux-url-opener
 wget https://raw.githubusercontent.com/Ak500k/termux-ydl/main/termux-url-opener -P /data/data/com.termux/files/home/bin

 cd /data/data/com.termux/files/home/bin
 chmod +x termux-url-opener
 	
 clear

 echo -e $Y$L"\n Finishing configuration..." $G" Ak500 \n"$N

 sleep 3.5

 echo -e $G"\n   Installation Finished...\n"$N

 kill -1 $PPID
