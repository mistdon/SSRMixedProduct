//
//  Hello.swift
//  SSRMixedProduct
//
//  Created by shendong on 2019/5/27.
//  Copyright © 2019 shendong. All rights reserved.
//

import Foundation

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
