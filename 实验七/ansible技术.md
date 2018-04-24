## 第七章：使用ansible技术重构FTP、NFS、DHCP、DNS、Samba服务器的自动安装与自动配置

----------

### 一、实验环境

* ubuntu 16.04 server 

### 二、目录结构

* group_vars
	* all #保存全局变量

* roles：#可以降低 Playbooks 的复杂性，更可以增加 Playbooks 的可用性。类似于python的Packages
	* dhcp
		* handles #包含重开系统服务文件 (Service)
		* tasks #包含任务列表文件，用于各项服务的安装与配置
		* templates #配置文件模板位置
	* dns
	* nfs
	* proftpd
	* samba

* deploy.yml #对所有hosts中的服务器以root用户执行各角色定义的操作
* hosts：目标主机
* install.sh


 ![1](HW7_img/3.jpg)

### 三、实验结果

* 因之前运行过一次但中途报错，故一些配置已在目标主机更改。再次运行未报错。

 ![2](HW7_img/1.jpg)

 ![3](HW7_img/2.jpg)

### 四、参考资料

* [课程ppt](http://sec.cuc.edu.cn/huangwei/course/LinuxSysAdmin/chap0x08.md.print.html)
* [ANSIBLE自动化运维工具的安装与使用](https://zhuanlan.zhihu.com/p/25368281)
* [Ansible常用模块](https://blog.csdn.net/pushiqiang/article/details/78249665)
* [Ansible playbook 基本案例](https://github.com/ansible/ansible-examples/tree/master/lamp_simple)

### 五、遇到的问题

* 有时报syntax error可能是代码中存在错误（不一定真的是语法错误）
* 对缩进要求严格