# 第二章：Vimtutor学习

----------


## 一、环境配置

* Ubuntu 16.04 Server 64bit
* 在asciinema注册一个账号，并在本地安装配置好asciinema

## 二、实验过程

### 1、配置 asciinema

* 安装：

        sudo apt-add-repository ppa:zanchey/asciinema
    	sudo apt-get update
    	sudo apt-get install asciinema

* 注册账号：

	root@ubuntu:~# asciinem auth

* 开始录制： 

	    #保存到本地
    	root@ubuntu:~# asciinema rec filename

		#保存到远程服务器
		root@ubuntu:~# asciinema rec -t filename


* 结束录制：

	`root@ubuntu:~# exit`

![](https://i.imgur.com/fhjn0YN.jpg)
	

### 2、vimtutor学习

* Lesson 1：https://asciinema.org/a/BFMsppVDl9T0XfhHU7TtgeeYp
* Lesson 2：https://asciinema.org/a/5giTZUPOiNyb3kwu2kXzFury7
* Lesson 3：https://asciinema.org/a/VA5HpUqwhOfhESOXl9070kxfo
* Lesson 4：https://asciinema.org/a/rPJkRbaBvXizipjYt9k47HZoS
* Lesson 5：https://asciinema.org/a/mKpRPVe0W3sNRUwHrYUY4omzh
* Lesson 6：https://asciinema.org/a/ydBcBm2kBuRtlQCxQSl7vyETq
* Lesson 7：https://asciinema.org/a/m4fg2rWjUTRrQDL04baMj5qwR


### 3、自查清单

#### （1）你了解vim有哪几种工作模式？

	命令模式(command-mode) ：
    插入模式(insert-mode) i、a、o...
    可视模式(visual-mode) v
    正常模式(normal-mode) 

#### （2）Normal模式下，从当前行开始，一次向下移动光标10行的操作方法？

	j10

#### （3）如何快速移动到文件开始行和结束行？如何快速跳转到文件中的第N行？

	开始行：gg
	结束行：G
	第N行：行号+G

#### （4）Normal模式下，如何删除单个字符、单个单词、从当前光标位置一直删除到行尾、单行、当前行开始向下数N行？

	删除单个字符：x
	单个单词：dw
	从当前光标位置一直删除到行尾：d$
	单行：dd
	当前行开始向下数N行：dNd

#### （5）如何在vim中快速插入N个空行？如何在vim中快速输入80个-？

	在vim中快速插入N个空行:  N i 回车 esc
	在vim中快速输入80个-:  80 i - esc

#### （6）如何撤销最近一次编辑操作？如何重做最近一次被撤销的操作？
	
	撤销：u
	重做：Ctrl+R

#### （7）vim中如何实现剪切粘贴单个字符？单个单词？单行？如何实现相似的复制粘贴操作呢？

	复制 
		复制一行：yy  
		复制单个字符：yl 
		复制单词：yw
	
	剪切
		剪切一行：dd  
		剪切单个字符：dl 
		剪切单词：dw

	粘贴
		用v选中文本之后可以按y进行复制，如果按d就表示剪切，之后按p进行粘贴。

#### （8）为了编辑一段文本你能想到哪几种操作方式（按键序列）？

	vim+文件名，i插入（o在行尾插入），编写（剪切、复制、粘贴），esc，：wq保存

#### （9）查看当前正在编辑的文件名的方法？查看当前光标所在行的行号的方法？

	查看当前正在编辑的文件名：normal模式下 :f
	查看当前光标所在行的行号：Ctrl+G
	
#### （10）在文件中进行关键词搜索你会哪些方法？如何设置忽略大小写的情况下进行匹配搜索？如何将匹配的搜索结果进行高亮显示？如何对匹配到的关键词进行批量替换？

	关键词搜索  : /[worlds]
	忽略大小写的情况下进行匹配搜索   : set ic
	高亮  : set hls is
	批量替换     :#,#s/old/new/g 其中，#,#是要更改的行号的范围
				:%s/old/new/g 更改全文件中的所有事件。
				:%s/old/new/gc 更改全文件中的所有事件,并给出替换与否的提示。 
	
#### （11）在文件中最近编辑过的位置来回快速跳转的方法？
	
	Ctrl+O（以前）、Ctrl+I（以后）
	
#### （12）如何把光标定位到各种括号的匹配项？例如：找到(, [, or {对应匹配的),], or }

	%

#### （13）在不退出vim的情况下执行一个外部程序的方法？

	:!+命令

#### （14）如何使用vim的内置帮助系统来查询一个内置默认快捷键的使用方法？如何在两个不同的分屏窗口中移动光标？

	查询一个内置默认快捷键  :help+快捷键名称
	不同的分屏窗口中移动光标 Ctrl+W  （演示视频见：https://asciinema.org/a/kTGfplrDLQx6WhO1lwoXGt9lz）
	

	
