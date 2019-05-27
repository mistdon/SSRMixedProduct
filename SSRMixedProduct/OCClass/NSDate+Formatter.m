//
//  NSDate+Formatter.m
//  SSRMixedProduct
//
//  Created by shendong on 2019/5/27.
//  Copyright © 2019 shendong. All rights reserved.
//

#import "NSDate+Formatter.h"

@implementation NSDate (Formatter)

- (void)currentDate{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSLog(@"%@",[formatter stringFromDate:self]);
}

@end
