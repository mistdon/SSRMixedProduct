//
//  ObjcViewController.h
//  SSRMixedProduct
//
//  Created by Don.shen on 2019/6/3.
//  Copyright © 2019 shendong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ObjcDelegate <NSObject>

- (void)objcViewController:(NSString *)message;

@end

@interface ObjcViewController : UIViewController

@property (nonatomic, weak, nullable) id<ObjcDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
