//
//  UIApplication+Extend.m
//  Carpenter
//
//  Created by 冯成林 on 15/4/24.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "UIApplication+Extend.h"

@implementation UIApplication (Extend)


/*
 *  当前程序的版本号
 */
-(NSString *)version{
    
    //系统直接读取的版本号
    NSString *versionValueStringForSystemNow=[[NSBundle mainBundle].infoDictionary valueForKey:(NSString *)kCFBundleVersionKey];
    
    return versionValueStringForSystemNow;
}



@end
