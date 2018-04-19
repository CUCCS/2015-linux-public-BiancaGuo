#!/usr/bin/expect

hosts=(
192.168.227.11
#192.168.23.126
#192.168.23.128
)

# 部分操作系统默认配置的 sshd 是禁止 root 用户远程登录的
users=(
"root"
#"cuc"
#"root"
)

ports=(
22
#22
#22
)

i=0

#连接目标系统普通账户
ssh-copy-id -i "$HOME/.ssh/id_rsa.pub" "root"@${hosts[0]} -p ${ports[0]}
#在目标系统中设置root用户初始密码
mkdir /root/.ssh
ssh-keygen -t rsa
sudo systemctl restart sshd

echo -n "Please enter root's password:"
read rpsw
spawn sudo passwd root
expect {  
	 #"*yes/no" { send "yes\r" ; exp_continue }  
	 "*password:" { send "$rpsw\r" ; exp_continue }
	 "*password:" { send "$rpsw\r" ; }
  }
expect eof

for host in "${hosts[@]}";do
  user=${users[$i]}
  spawn ssh-copy-id -i "$HOME/.ssh/id_rsa.pub" "${user}"@${host} -p ${ports[$i]}
  expect {  
	 "*yes/no" { send "yes\r" ; exp_continue }  
	 "*password:" { send "$rpsw\r" ; exp_continue }
	 "*password:" { send "$rpsw\r" ; }
  }
  expect eof
  # patch for Ubuntu 16.04 server without python-minimal installed as pre-requisite
  # install_python "${user}" "${host}" "${ports[$i]}"
  i=$((i+1))
done