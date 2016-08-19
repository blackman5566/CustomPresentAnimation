//
//  CustomPresentingAnimation.m
//  CustomPresentAnimation
//
//  Created by AllenShiu on 2016/8/19.
//  Copyright © 2016年 AllenShiu. All rights reserved.
//

#import "CustomPresentingAnimation.h"

@implementation CustomPresentingAnimation

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.3;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    CGRect finalFrame = [transitionContext initialFrameForViewController:fromViewController];
    CGRect moveFrame = CGRectMake(CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetMinY(finalFrame), CGRectGetWidth(finalFrame), CGRectGetHeight(finalFrame));
    // push
    if (self.customAnimation == CustomAnimationPush) {
        CGRect fromFrame = finalFrame;
        fromFrame.origin.x = finalFrame.origin.x - 100;
        toViewController.view.frame = moveFrame;
        UIView *container = [transitionContext containerView];
        [container insertSubview:toViewController.view belowSubview:fromViewController.view];
        
        [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations: ^{
            fromViewController.view.frame = fromFrame;
            toViewController.view.frame = finalFrame;
        } completion: ^(BOOL finished) {
            fromViewController.view.frame = finalFrame;
            [transitionContext completeTransition:YES];
        }];
    }
    else {
        // dismiss
        CGRect fromFrame = finalFrame;
        fromFrame.origin.x = finalFrame.origin.x - 100;
        toViewController.view.frame = fromFrame;
        [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations: ^{
            fromViewController.view.frame = moveFrame;
            toViewController.view.frame = finalFrame;
        } completion: ^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }
}

@end
