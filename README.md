![image](https://github.com/CharlinFeng/Resource/blob/master/CoreLaunch/logo.png)<br /><br />

一键启动动画 （持续关注[信息公告牌](https://github.com/CharlinFeng/Show)）
==========
### .Xcode7
### .Objective-C
### .iOS 7.0~

<br/><br/><br/>
快速集成
==========

###您只需一句代码即可集成！
<br/>
#### 1.请不要直接拖拽`CoreLaunch`文件夹到您的项目，此项目是5 in 1合集。如果您是测试，你可以直接拖拽`CoreLaunch`文件夹到您的项目。
<br/>
#### 2.再次请您明确，`CoreLaunch`仅仅是一个统称，`CoreLaunch`有5种效果任你挑选，并且这5种效果是放在5个文件夹，他们是相互独立的。

> .Lite版<br/>
> .Plus版<br/>
> .Cool版<br/>
> .Pro版<br/>
> .Flip版<br/>

#### 3.一句代码集成请放在AppDelegate中的window成为keyWindow之后即可。

注：您只需使用CoreLaunch的5 in 1合集其中任一一个即可。并且他们之前没有任何耦合性，完全可以单独使用。


<br/><br/><br/>
使用示例
==========

<br/><br/>
#### 1. Lite版

    /** Lite版本 */
    [CoreLaunchLite animWithWindow:self.window image:nil];

![image](https://github.com/CharlinFeng/Resource/blob/master/CoreLaunch/1.gif)<br /><br />

<br/><br/>
#### 2. Plus版

    /** Plus版本 */
    [CoreLaunchPlus animWithWindow:self.window image:nil];

![image](https://github.com/CharlinFeng/Resource/blob/master/CoreLaunch/2.gif)<br /><br />

<br/><br/>
#### 3.Cool版
##### 注：此效果为转场封装，默认效果为动画随机，方向随机，速率随机，您也可以到`CoreLaunchCool.m`自行配置您想要的效果。

    /** Cool版本 */
    [CoreLaunchCool animWithWindow:self.window image:nil];

![image](https://github.com/CharlinFeng/Resource/blob/master/CoreLaunch/3.gif)<br /><br />

<br/><br/>
#### 4. Pro版

##### 注：本版本中使用了一个中间控制器ProVC，他涉及了比较复杂的循环引用，不过已经处理，您可以查看控制台他是会安全释放的。

    /** Pro版本 */
    [CoreLaunchPro animWithWindow:self.window image:nil];

![image](https://github.com/CharlinFeng/Resource/blob/master/CoreLaunch/4.gif)<br /><br />

<br/><br/>
#### 5. Flip版

##### 注：本版本使用了各种延时不停的删除增加补充场景界面以实现效果，比较有趣。

    /** Flip版本 */
    [CoreLaunchFlip animWithWindow:self.window image:nil];

![image](https://github.com/CharlinFeng/Resource/blob/master/CoreLaunch/5.gif)<br /><br />


#### 注：每个方法都可传image，这是一种长远考虑，涉及根控制器切换与版本新特性，当前您只需传nil即可。
