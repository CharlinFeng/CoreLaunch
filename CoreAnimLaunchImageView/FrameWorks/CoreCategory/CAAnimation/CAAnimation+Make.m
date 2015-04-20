//
//  CAAnimation+Make.m
//  4s
//
//  Created by muxi on 15/3/11.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import "CAAnimation+Make.h"



@implementation CAAnimation (Make)

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
+(CATransition *)transitionWithAnimType:(CAAnimationTransitionAnimType)animType subType:(CAAnimationTransitionSubType)subType curve:(CAAnimationTransitionCurve)curve duration:(CGFloat)duration{
    
    CATransition *transition=[CATransition animation];
    
    //动画时长
    transition.duration=duration;
    
    //动画类型
    transition.type=[self animaTypeWithTransitionType:animType];
    
    //动画方向
    transition.subtype=[self animaSubtype:subType];
    
    //缓动函数
    transition.timingFunction=[CAMediaTimingFunction functionWithName:[self curve:curve]];
    
    //完成动画删除
    transition.removedOnCompletion = YES;

    return transition;
}



/*
 *  返回动画曲线
 */
+(NSString *)curve:(CAAnimationTransitionCurve)curve{
    
    //曲线数组
    NSArray *funcNames=@[kCAMediaTimingFunctionDefault,kCAMediaTimingFunctionEaseIn,kCAMediaTimingFunctionEaseInEaseOut,kCAMediaTimingFunctionEaseOut,kCAMediaTimingFunctionLinear];
    
    return [self objFromArray:funcNames index:curve isRamdom:(CAAnimationTransitionCurveRamdom == curve)];
}



/*
 *  返回动画方向
 */
+(NSString *)animaSubtype:(CAAnimationTransitionSubType)subType{
    
    //设置转场动画的方向
    NSArray *subtypes=@[kCATransitionFromTop,kCATransitionFromLeft,kCATransitionFromBottom,kCATransitionFromRight];
    
    return [self objFromArray:subtypes index:subType isRamdom:(CAAnimationTransitionSubtypesFromRamdom == subType)];
}




/*
 *  返回动画类型
 */
+(NSString *)animaTypeWithTransitionType:(CAAnimationTransitionAnimType)type{
    
    //设置转场动画的类型
    NSArray *animArray=@[@"rippleEffect",@"suckEffect",@"pageCurl",@"oglFlip",@"cube",@"reveal",@"pageUnCurl"];
    
    return [self objFromArray:animArray index:type isRamdom:(CAAnimationTransitionAnimTypeRamdom == type)];
}



/*
 *  统一从数据返回对象
 */
+(id)objFromArray:(NSArray *)array index:(NSUInteger)index isRamdom:(BOOL)isRamdom{
    
    NSUInteger count = array.count;
    
    NSUInteger i = isRamdom?arc4random_uniform(count) : index;
    
    return array[i];
}



@end
