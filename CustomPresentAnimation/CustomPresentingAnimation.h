//
//  CustomPresentingAnimation.h
//  CustomPresentAnimation
//
//  Created by AllenShiu on 2016/8/19.
//  Copyright © 2016年 AllenShiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum {
    CustomAnimationPush,
    CustomAnimationDismiss,
} CustomAnimation;

@interface CustomPresentingAnimation : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) CustomAnimation customAnimation;

@end