
# <center><font face="宋体"> 基于MATLAB软件GUI界面的自制简单电子琴 </font></center>

*<center><font face="Times New Roman" size = 3> Author：[chentianyang](https://github.com/chentianyangWHU) &emsp;&emsp; E-mail：tychen@whu.edu.cn &emsp;&emsp; [Link](https://github.com/chentianyangWHU/MyPiano)</center>*

**概要：** <font face="宋体" size = 3> 本文基于MATLAB及其GUI界面设计了一个简单电子琴。利用MATLAB的GUI控件及相关算法，实现了一些简单的功能。这是作者大一暑期课程《MATLAB基础与应用》的两个小课设之一。</font>

**关键字：** <font face="宋体" size = 3 >电子琴；MATLAB</font>

&emsp;&emsp; <font face="宋体">这是我大一暑期课程《MATLAB基础与应用》的两个小课设之一。</font>

&emsp;&emsp; <font face="宋体">本课设用的是MATLAB及其自带的GUI界面，初步设想是做一个类似于电子琴的发音器。所用到的文件目录如下：</font>

<center><img src="https://img-blog.csdnimg.cn/20190904184858675.png" width="30%">  </center><center><font face="宋体" size=2 > 图 1 所需文件目录</font> </center>

&nbsp;
&emsp;&emsp; <font face="宋体">共需要用到4个文件。其中，.m是MATLAB源代码文件，.fig是MATLAB的GUI文件，.jpg和.wav分别是一张图和一段语音，是项目所需的资源文件。</font>

&emsp;&emsp; <font face="宋体">当点击“运行”之后，显示的界面是这个样子的：</font>

<center><img src="https://img-blog.csdnimg.cn/20190904185118960.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2N0eXF5MjAxNTMwMTIwMDA3OQ==,size_16,color_FFFFFF,t_70" width="80%">  </center><center><font face="宋体" size=2 > 图 2 运行显示界面</font> </center>

&nbsp;
&emsp;&emsp; <font face="宋体">在程序最开始，会默认打开目录中的.wav文件，播放一段语音，内容就是“welcome to my piano”。后面还有一个label，它显示的内容也是这句话，label的标志是一个笑脸，就是目录中的.jpg文件。之后就进入了程序的正式界面。如下图：</font>

<center><img src="https://img-blog.csdnimg.cn/20190904185235228.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2N0eXF5MjAxNTMwMTIwMDA3OQ==,size_16,color_FFFFFF,t_70" width="80%">  </center><center><font face="宋体" size=2 > 图 3 程序正式界面</font> </center>

&nbsp;
&emsp;&emsp; <font face="宋体">现在我们来看这个界面。</font>

&emsp;&emsp; <font face="宋体">上方标题之下是2个坐标面板，左右分别显示当前琴音的时域、频域波形。右侧框内显示了琴音的频率数值，当前按下的是小字一组的g（so音），其频率为392Hz。下面的单选框是选择坐标值有无虚线网格。下方的按键是对应计算机键盘作出来的，因为当时的初步想法是按下某一个键盘就响起对应的琴音，但是后来没能实现，所以只好老老实实地用鼠标点击。我一共是作了5组音键：大字组、小字组、小字一组、小字二组、小字三组，频率由低变高。<font>

&emsp;&emsp; <font face="宋体">按下右侧中间的“Exit”按钮时，会出现以下界面：</font>

<center><img src="https://img-blog.csdnimg.cn/20190904185600207.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2N0eXF5MjAxNTMwMTIwMDA3OQ==,size_16,color_FFFFFF,t_70" width="80%">  </center><center><font face="宋体" size=2 > 图 4 按下“Exit”按钮后的显示</font> </center>

&nbsp;

&emsp;&emsp; <font face="宋体">确认退出就按“是”，否则就按“否”或“取消”。</font>

&emsp;&emsp; <font face="宋体">最后做一个简单的小结：</font>

&emsp;&emsp; <font face="宋体">这个小项目本身十分粗糙，然而作为一个为期仅有一周的暑期课的课设也不算太low。由于当时的知识储备还比较少，并且也没有乐理方面的基础知识，所以也就没有认识到谐波对音色音质的重要影响，故而琴音只是用计算机模拟的正弦音配上合适的频率而已。如果有读者对这个项目感兴趣，不妨在这点上多做一些优化。另一方面，这个GUI界面也是比较丑的，从审美角度看一个优美的界面应当尽可能隐藏一切细节而把空间最大可能地留给显示部分，具体操作包括把按钮等控件做成菜单或者工具栏等等，所以说这里也有提升的空间。</font>

&emsp;&emsp; <font face="宋体">本文为原创文章，转载或引用务必注明来源及作者。</font>