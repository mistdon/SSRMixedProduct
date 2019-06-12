//
//  AppObjcConstant.h
//  SSRMixedProduct
//
//  Created by shendong on 2019/5/31.
//  Copyright © 2019 shendong. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 AppConstant
 
 对于一些固定常量，我们需要设置固定的header文件
 - 纯Swift项目，可以使用AppConstant.swift文件
 - 纯OC项目, 可以使用AppObjcConstant.*文件
 - 对于混编的项目，需使用AppObjcConstant.*文件，可以同时在OC和Swift中使用;如果用AppConstant.swift,在OC文件中会找不到swift中定义的全局常量。(结论实践总结)
 
 */

extern NSString *const AppModuleName;

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

