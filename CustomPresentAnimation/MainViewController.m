//
//  MainViewController.m
//  CustomPresentAnimation
//
//  Created by AllenShiu on 2016/8/19.
//  Copyright © 2016年 AllenShiu. All rights reserved.
//

#import "MainViewController.h"
#import "PushViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)presentViewAction:(id)sender {
    PushViewController *pushViewController = [PushViewController new];
    pushViewController.transitioningDelegate = self;
    pushViewController.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:pushViewController animated:YES completion:nil];
}

@end
