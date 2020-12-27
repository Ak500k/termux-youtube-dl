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

apt update -y
clear


echo -e $R"__   __          _         _          ____  _" $N
sleep 0.3
echo -e $R"\ \ / /__  _   _| |_ _   _| |__   ___|  _ \| |" $N
sleep 0.3
echo -e $R" \ V / _ \| | | | __| | | | '_ \ / _ \ | | | |" $N
sleep 0.3
echo -e $R"  | | (_) | |_| | |_| |_| | |_) |  __/ |_| | |___" $N
sleep 0.3
echo -e $R"  |_|\___/ \__,_|\__|\__,_|_.__/ \___|____/|_____|" $N

sleep 1.5

echo $Y $L" YouTube-dl Installer By "$R" Ak500 "$N

echo $Y$L" Installing python... "$N

		pkg install python -y
		clear

echo $Y$L" Installing ffmpeg... "$G" Ak500 "$N

		apt install ffmpeg -y
		apt update -y
		clear

echo $Y$L" Installing wget... "$G" Ak500 "$N

		pkg install wget -y

echo $Y $L" Installing YouTube-dl... " $N 

		pip install youtube-dl
		clear

echo $Y$L" Setting up configs..."$G" Ak500 "$N
sleep 2

echo $Y$L " Creating Youtube folder... "$N
		mkdir /data/data/com.termux/files/home/storage/shared/Youtube
sleep 1.5

echo $Y$L " Creating youtube-dl config... "$N
		mkdir -p ~/.config/youtube-dl
sleep 1.5

echo $Y$L" Getting config file... "$G" Ak500 "$N
		wget https://raw.githubusercontent.com/ak500k/termux-ydl/master/config -P /data/data/com.termux/files/home/.config/youtube-dl

echo $Y $L "Creating bin folder..." $N
		mkdir ~/bin
		clear
sleep 1.5

echo $Y$L" Getting files... "$G" Ak500 "$N
		wget https://raw.githubusercontent.com/ak500k/termux-ydl/master/termux-url-opener -P /data/data/com.termux/files/home/bin
		clear
		
echo $Y $L " Finishing configuration... "$G " Ak500 "$N
sleep 5

echo $G" Installation Finished... " $N

kill -1 $PPID
