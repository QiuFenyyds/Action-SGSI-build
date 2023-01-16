#!/bin/bash

#检测是否有大聪明
if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
clear
    echo -e "\e[1;36m师傅 你是干什么工作的？\e[0m"
    echo -e "\e[1;31m这是Termux呀\e[0m"
    echo -e "\e[1;31m你得先cd进入Linux目录才行呀\e[0m"
    echo -e "\e[1;33m如果你是看X的教程\e[0m"
    echo -e "\e[1;32m请用以下命令cd到Linux目录并启动\e[0m"
echo -e "————————————————
cd ~/Termux-Linux/Ubuntu
./start-ubuntu.sh
————————————————"
exit
else
:
fi

#必须用root
if [[ $EUID != 0 ]];then
clear
echo -e "\033[31m 当前不是root用户，必须更换root用户才能用。\033[0m\n"
exit
else
clear
echo -e "\033[36m 你好旅行者，少女为你祈福..\033[0m\n"
:
fi

#定义颜色消息
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m" && H_font_prefix="\033[33m"
Info="${Green_font_prefix}[信息]${Font_color_suffix}"
Error="${Red_font_prefix}[错误]${Font_color_suffix}"
Tip="${H_font_prefix}[注意]${Font_color_suffix}"
OK="${Green_font_prefix}[OK]${Font_color_suffix}"

#检测仓库是否存在-但不检测完整性
if [ -e "/root/Xx/Help.sh" ]; then
  bash /root/Xx/Help.sh
  exit
else
  clear
fi 
  echo -e ${Error} 未检测到X管理系统
  echo -e ${Tip} 请自己判断是否有安装过
  echo -e ${Info} 如果已经安装成功且运行
  echo -e ${Info} 请加入交流群453694434询问

echo -e "————————————————
可以为您安装X管理系统
但是需要经过您同意
如果你同意安装X管理系统
请你输入 同意安装 
如果不同意安装请回车取消
————————————————"
echo -e ${Info} 长期更新 且会根据成员要求更新
echo -e ${Info} 可以加入交流群453694434提醒加进去
function main(){
read -p "安装X管理脚本请输入（同意安装）:" num
case "${num}" in
	
     同意安装)
     # 检查是否安装了git

if [ -x "$(command -v git)" ]; then
    cd /root
    git clone https://gitee.com/haanxuan/Xx.git
    apt install whiptail -y
    echo "alias x='bash /root/Xx/Help.sh'" >> ~/.bashrc
    echo "alias yz='cd /root/Yunzai-Bot'" >> ~/.bashrc
    echo "alias y='redis-server --daemonize yes --save 900 1 --save 300 10 && cd /root/Yunzai-Bot && npm run stop && pnpm stop && clear && echo -e \"\e[1;36m少女祈祷中..\e[0m\" && node app'" >> ~/.bashrc
    bash /root/Xx/Help.sh 
    exit
else
    yum install git -y
    apt update -y
    apt install git -y
    cd /root
    git clone https://gitee.com/haanxuan/Xx.git
    apt install whiptail -y
    echo "alias x='bash /root/Xx/Help.sh'" >> ~/.bashrc
    echo "alias yz='cd /root/Yunzai-Bot'" >> ~/.bashrc
    echo "alias y='redis-server --daemonize yes --save 900 1 --save 300 10 && cd /root/Yunzai-Bot && npm run stop && pnpm stop && clear && echo -e \"\e[1;36m少女祈祷中..\e[0m\" && node app'" >> ~/.bashrc
    bash /root/Xx/Help.sh  
fi 
     exit
     ;;

     *)
	clear
     echo -e "\e[1;31m
 *           *
   *       *
     *   *
       *
    *     *
  *         *
*             *
\e[0m"
echo -e "\e[1;32m 感谢使用 再会~\e[0m"     
exit   
	;;
esac   
exit  
}
main
