//
//  CAAnimation+Make.h
//  4s
//
//  Created by muxi on 15/3/11.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIkit.h>

/*
 *  动画类型
 */
typedef enum{
    
    //水波
    CAAnimationTransitionAnimTypeRippleEffect=0,
    
    //吸走
    CAAnimationTransitionAnimTypeSuckEffect,
    
    //翻开书本
    CAAnimationTransitionAnimTypePageCurl,
    
    //正反翻转
    CAAnimationTransitionAnimTypeOglFlip,
    
    //正方体
    CAAnimationTransitionAnimTypeCube,
    
    //push推开
    CAAnimationTransitionAnimTypeReveal,
    
    //合上书本
    CAAnimationTransitionAnimTypePageUnCurl,
    
    //随机
    CAAnimationTransitionAnimTypeRamdom,
    
}CAAnimationTransitionAnimType;




/*
 *  动画方向
 */
typedef enum{
    
    //从上
    CAAnimationTransitionSubtypesFromTop=0,
    
    //从左
    CAAnimationTransitionSubtypesFromLeft,
    
    //从下
    CAAnimationTransitionSubtypesFromBotoom,
    
    //从右
    CAAnimationTransitionSubtypesFromRight,
    
    //随机
    CAAnimationTransitionSubtypesFromRamdom,
    
}CAAnimationTransitionSubType;


/*
 *  动画曲线
 */
typedef enum {
    
    //默认
    CAAnimationTransitionCurveDefault,
    
    //缓进
    CAAnimationTransitionCurveEaseIn,
    
    //缓出
    CAAnimationTransitionCurveEaseOut,
    
    //缓进缓出
    CAAnimationTransitionCurveEaseInEaseOut,
    
    //线性
    CAAnimationTransitionCurveLinear,
    
    //随机
    CAAnimationTransitionCurveRamdom,
    
}CAAnimationTransitionCurve;




@interface CAAnimation (Make)



/**
*  转场动画
*
*  @param animType 转场动画类型
*  @param subtype  转动动画方向
*  @param curve    转动动画曲线
*  @param duration 转动动画时长
*
*  @return 转场动画实例
*/
+(CATransition *)transitionWithAnimType:(CAAnimationTransitionAnimType)animType subType:(CAAnimationTransitionSubType)subType curve:(CAAnimationTransitionCurve)curve duration:(CGFloat)duration;


@end
