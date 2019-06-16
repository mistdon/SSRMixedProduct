# Blocks

```swift
    // 第一种: 无参数无返回
    DateManager.shared().testVoidBlock = {
    	print("testVoidBlock 1")
    }
    DateManager.shared().testVoidBlock()
    // 第二种: 有参数无返回
    DateManager.shared().testVoidBlock2 = {(text: String?) in
         print(text)
    }
    DateManager.shared().testVoidBlock2("swift testVoidBlock2")
    // 第三种: 无参数有返回
    DateManager.shared().testStringBlock = { () -> String in
    	return "testStringBlock : 1"
    }
    let testStr1 = DateManager.shared().testStringBlock()
    if let testStr1 = testStr1 {
    	print(testStr1)
    }
    // 第四种: 有参数，有返回
    DateManager.shared().testStringBlock2 = { (text: String?) -> String in
    	return "testStringBlock2 : " + (text ?? "dd")
    }
    let testStr2 = DateManager.shared().testStringBlock2("ssr")
    if let testStr2 = testStr2 {
        print(testStr2)
    }
```

