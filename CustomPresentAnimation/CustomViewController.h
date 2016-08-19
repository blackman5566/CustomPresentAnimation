//
//  CustomViewController.h
//  CustomPresentAnimation
//
//  Created by AllenShiu on 2016/8/19.
//  Copyright © 2016年 AllenShiu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomPresentingAnimation.h"

@interface CustomViewController : UIViewController <UIGestureRecognizerDelegate,UIViewControllerTransitioningDelegate>

@property (strong, nonatomic) CustomPresentingAnimation *customPresentingAnimation;

@end
