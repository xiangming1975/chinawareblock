# chinawareblock
国产流氓、娱乐软件和不受欢迎的软件屏蔽工具
其实是个很菜的东西

[原始项目 https://github.com/sharoue/chinawareblock/tree/master/%E4%B8%80%E9%94%AE%E5%B1%8F%E8%94%BD%E8%BD%AF%E4%BB%B6](https://github.com/sharoue/chinawareblock/tree/master/%E4%B8%80%E9%94%AE%E5%B1%8F%E8%94%BD%E8%BD%AF%E4%BB%B6)

# 制作背景
* 由于[舞恸零一](https://liwei2.com/)开发的[流氓软件终结者3.5](https://liwei2.com/2015/11/27/378.html)已经很久没有更新，现在的流氓基本挡不住了，这个把证书防御的部分拿出来续了一下。
* 我自己的工作内容之一是给政府部门维护电脑，所以工具本身除了防住一些特别讨厌招烦的国产流氓，还要防止不自觉的人员在上面使用一些人民群众和纪检监察不乐意看到的软件，就是什么视频网站app，游戏平台，直播平台，股票软件，之类的。


# 使用要求和限制

* 需要Vista以上系统，需要UAC开启
* 软件也要有点级别，那些连数字证书都没有的产品这个防不住
* 据说配置非常差的电脑不建议拉黑太多证书 

# 使用方法

* 最简单粗暴的方法，把工具随便解压在哪里，双击运行**除腾讯全拉黑.bat**，会拉黑子文件夹下所有证书相关的软件。腾讯文件夹下的不敢拉黑，不然这电脑没人用了，腾讯你牛逼。
* 也可以单独进一个个文件夹，点击**~一键拉黑.bat**，拉黑文件夹下所有证书。证书可以根据需要自行增减。
* 证书文件的命名方式是公司名-软件名-加密方式-到期日，所以如果到期日已经过了的证书，应该要留一下他们新的安装包，可能要补充新的拉黑了。

# 证书提取工具
* 感谢@EraserKing网友提供的C#程序和@rewqazxv网友提供的Powershell脚本，提供了提取exe文件数字签名的功能，这样拉黑的操作就更简单了。用法：将一个或多个流氓exe放在本目录，双击运行GetCertFromFolder.exe，或者右键GetCertFromFolder.ps1，选择“使用PowerShell”运行，过一阵子全部证书文件就被导出来，可以拿去分类拉黑了，或者干脆就地拉黑~~~

# 需要扩充的功能
* 关于如何导出exe文件的全部证书，因为能力问题，只是找了下资料，然而没有去学习。先放这吧，免得有时间学的时候连资料都找不到了。https://www.sysadmins.lv/blog-en/reading-multiple-signatures-from-signed-file-with-powershell.aspx
