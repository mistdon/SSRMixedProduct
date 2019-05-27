# SSRMixedProduct
OC和Swift混编Demo
- Xcode [10.2.1]
- Swift [5.0]
- OC [2.0]


### 配置
1. 在混编时，如果创建另一个类型的文件（比如在Swift项目中创建OC文件），会自动生成 "YourProjectName-Bridging-Header.h"文件

![createBridgingHeader](sources/createBridgingHeader.png)

2. 在Target -> Build Setting中搜索module

   ![](/Users/shendong/Documents/github/SSRMixedProduct/sources/searchModule.png)

   

3. 设置Defines Module No to YES

   ![](/Users/shendong/Documents/github/SSRMixedProduct/sources/changeDefineModuleFromNoToYES.png)

** 关于Module，可以参考这篇文章[iOS静态库和动态库](https://juejin.im/post/5ce3ef94f265da1bce3da5b5)

### OC中使用Swift文件

OC中使用Swift文件，必须 import 'YourProjectName-Swift.h'，然后正常使用即可

#### 1. 自有类

​     Swift中的Class，func，var使用`@objc`标识，表示可以在OC中引用, 比如:

```swift
@objc class Hello: NSObject {
    @objc var helloString : String{
        get{
            return "hello, "
        }
    }
    @objc public func sayHello(_ name: String){
        print(helloString + name)
    }
}
```



#### 2. 第三方库

### Swift中使用OC文件

#### 1. 自有类

在`YourProjectName-Bridging-Header.h`中添加需要引入的OC类，然后在Swift中直接引用，详见[Bridging-Header](SSRMixedProduct/SSRMixedProduct-Bridging-Header.h)

```swift
let manager = DateManager()
manager.managerString("SSRMixedProduct")
```



#### 2. 第三方库



## Q&A？

Q: 更改了Bridging-Header.h文件的路径，提示找不到Header.h文件？

A：Target -> Swift Complier - General -> Objecive-C Bridging header中显示的path, 根据实际更改即可。