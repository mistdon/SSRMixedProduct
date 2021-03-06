//
//  DateManager.h
//  SSRMixedProduct
//
//  Created by shendong on 2019/5/27.
//  Copyright © 2019 shendong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^testVoidBlock)(void);

typedef void(^testVoidBlock2)(NSString *name);

typedef NSString *_Nullable(^testStringBlock)(void);

typedef NSString *_Nullable(^testStringBlock2)(NSString *name);

@interface DateManager : NSObject

@property (nonatomic, copy) testVoidBlock testVoidBlock;

@property (nonatomic, copy) testVoidBlock2 testVoidBlock2;

@property (nonatomic, copy) testStringBlock testStringBlock;

@property (nonatomic, copy) testStringBlock2 testStringBlock2;

+ (instancetype)shared;

- (void)managerString:(NSString *)dateString;
//! 这是只能用在OC的方法，不希望被Swift使用，可以使用 NS_SWIFT_UNAVALIABLE 宏来定义
- (void)managerOnlyOCDate NS_SWIFT_UNAVAILABLE("This method used only by OC.");

@end

NS_ASSUME_NONNULL_END
