[Declared Properties](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjectiveC/Chapters/ocProperties.html)

[Declared property](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/DeclaredProperty.html)



大纲如下
# Declared Properties
## Property Declaration Attributes
主要包含以下部分
### Accessor Method Names
### Writability
### Setter Semantics
### Atomicity

根据 [OC 属性、属性关键字用法大全](https://www.jianshu.com/p/98db9087a6e7)

    MRC手动管理内存
    retain 对象的属性声明，为当前对象指向的对象 引用计数+1保证不被释放
    copy 对象的属性声明，操作的是复制的另一块内存
    ARC自动管理内存 应用在对象类型的属性里
    strong 强指针 增加一个对象的引用权限（引用计数+1）
    weak 不会增加一个对象的引用权限，只能指向对象，不持有指向对象的所有权

    非对象类型用 assign 可省略
    对象类型用 retain/strong
    NSString用 copy/strong
    
    NSString属性，一般用strong修饰；但如果要防止在其他地方被修改，则用copy修饰。
    
最后确定
* 非对象类型 assign
* 对象类型 strong
* NSString copy