//
//  CoreAnimLaunchImageView.m
//  CoreAnimLaunchImageView
//
//  Created by 冯成林 on 15/4/20.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "CoreAnimLaunchImageView.h"
#import "UIImage+Extend.h"
#import "CAAnimation+Make.h"

const CGFloat ShowTimeDuration = .1f;

@implementation CoreAnimLaunchImageView

/*
 *  显示
 */
+(void)show{
    
    //获取启动图片
    UIImage *image = [UIImage launchImage];
    
    //创建imageView
    CoreAnimLaunchImageView *imageV = [[CoreAnimLaunchImageView alloc] init];
    
    //设置frame
    imageV.frame = [UIScreen mainScreen].bounds;

    //设置图片
    imageV.image = image;
    
    //添加到最前的window上
    UIWindow *foreWindow =(UIWindow *)[UIApplication sharedApplication].keyWindow;
    
    [foreWindow addSubview:imageV];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(ShowTimeDuration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        //隐藏
        [imageV dismiss];
    });
}


/*
 *  隐藏
 */
-(void)dismiss{
    
    //添加一个转场动画
    [self.superview.layer addAnimation:[CAAnimation transitionWithAnimType:CAAnimationTransitionAnimTypePageCurl subType:CAAnimationTransitionSubtypesFromBotoom curve:CAAnimationTransitionCurveEaseInEaseOut duration:3.0f] forKey:@"RandomTransition"];
    
    [self removeFromSuperview];
}



@end
