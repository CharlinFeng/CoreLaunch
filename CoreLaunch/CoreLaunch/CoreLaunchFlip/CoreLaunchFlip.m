//
//  CoreLaunchLite.m
//  CoreLaunch
//
//  Created by 冯成林 on 15/10/16.
//  Copyright © 2015年 冯成林. All rights reserved.
//

#import "CoreLaunchFlip.h"
#import "UIView+JDFlipImageView.h"

#define iphone4x_3_5 ([UIScreen mainScreen].bounds.size.height==480.0f)

#define iphone5x_4_0 ([UIScreen mainScreen].bounds.size.height==568.0f)

#define iphone6_4_7 ([UIScreen mainScreen].bounds.size.height==667.0f)

#define iphone6Plus_5_5 ([UIScreen mainScreen].bounds.size.height==736.0f || [UIScreen mainScreen].bounds.size.height==414.0f)

@implementation CoreLaunchFlip


/** 执行动画 */
+(void)animWithWindow:(UIWindow *)window image:(UIImage *)image{
    
    UIView *view = window.rootViewController.view;
    
    
    UIImageView *imageV = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    imageV.image = image==nil?[self launchImage]:image;
    [view addSubview:imageV];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [imageV removeFromSuperview];
        UIImage *image = [self cutFromView:view];
        [view addSubview:imageV];
    
        UIImageView *imageV2 = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        imageV2.image = image;
        [view addSubview:imageV2];
       [view addSubview:imageV];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [imageV flipToView:imageV2];
            [imageV removeFromSuperview];
            [imageV2 removeFromSuperview];
        });
    });
}




/**
 *  获取启动图片
 */
+(UIImage *)launchImage{
    
    NSString *imageName=@"LaunchImage-700";
    
    if(iphone5x_4_0) imageName=@"LaunchImage-700-568h";
    
    if(iphone6_4_7) imageName = @"LaunchImage-800-667h";
    
    if(iphone6Plus_5_5) imageName = @"LaunchImage-800-Portrait-736h";
    
    UIImage *image = [UIImage imageNamed:imageName];
    
    NSAssert(image != nil, @"Charlin Feng提示您：请添加启动图片！");
    
    return image;
}

+(UIImage *)cutFromView:(UIView *)view{
    
    //开启图形上下文
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0.0f);
    
    //获取上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //在新建的图形上下文中渲染view的layer
    [view.layer renderInContext:context];
    
    [[UIColor clearColor] setFill];
    
    //获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    //关闭图形上下文
    UIGraphicsEndImageContext();
    
    return image;
}

@end
