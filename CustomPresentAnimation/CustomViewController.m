//
//  CustomViewController.m
//  CustomPresentAnimation
//
//  Created by AllenShiu on 2016/8/19.
//  Copyright © 2016年 AllenShiu. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

#pragma mark - UIVieControllerTransitioningDelegate

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting
                                                                       sourceController:(UIViewController *)source {
    self.customPresentingAnimation.customAnimation = CustomAnimationPush;
    return self.customPresentingAnimation;
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    self.customPresentingAnimation.customAnimation = CustomAnimationDismiss;
    return self.customPresentingAnimation;
}

#pragma mark - init

- (void)setupCustomPresentingAnimation {
    self.customPresentingAnimation = [CustomPresentingAnimation new];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupCustomPresentingAnimation];
}

@end
