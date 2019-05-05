知道了 app 怎么运行起来才能找到入口，跟踪流程。

[iOS开发 APP启动过程](https://juejin.im/post/5a687e27f265da3e54693e8e)
## UIApplicationMain函数作用
> main函数中之是执行了UIApplicationMain函数，可以肯定的时候该函数一定很重要，但它的具体作用是什么呢，
UIApplicationMain函数会根据principalClassName创建UIApplication对象，根据delegateClassName创建一个delegate对象，并将该delegate对象赋值给UIApplication对象中的delegate属性 。
接着会建立应用程序的Main Runloop（事件循环），进行事件的处理(首先会在程序完毕后调用delegate对象的application:didFinishLaunchingWithOptions:方法)。
app启动时会加载Info.plist文件，看是否指定了main.storyboard，如果设置了就去加载main.storyboard，那么加载main.storyboard时，系统会进行如下操作：
创建窗口 -> 加载main.storyboard并且加载main.storyboard中指定的控制器 -> 创建控制器成为窗口的根控制器，让窗口显示出来。


# Info.plist
[IOS之Info.plist文件简介](https://my.oschina.net/hmj/blog/104196)

# storyboard
