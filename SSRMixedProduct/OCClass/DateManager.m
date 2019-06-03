//
//  DateManager.m
//  SSRMixedProduct
//
//  Created by shendong on 2019/5/27.
//  Copyright © 2019 shendong. All rights reserved.
//

#import "DateManager.h"

static DateManager *manager = nil;

@implementation DateManager

+ (instancetype)shared{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[DateManager alloc] init];
    });
    return  manager;
}

- (void)managerString:(NSString *)dateString{
    NSLog(@"dateString -> %@",dateString);
}
- (void)managerOnlyOCDate{
    NSLog(@"%s",__func__);
}
@end
