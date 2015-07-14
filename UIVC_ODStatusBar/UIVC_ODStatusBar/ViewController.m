//
//  ViewController.m
//  UIVC_ODStatusBar
//
//  Created by Alexey Nazaroff on 26.06.14.
//  Copyright (c) 2014 Alexey Nazaroff. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+ODStatusBar.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
}

- (IBAction)toggleStatusBarVisibility:(id)sender {
    [self od_setStatusBarHidden:![UIApplication sharedApplication].statusBarHidden
                  withAnimation:UIStatusBarAnimationFade];
}

- (IBAction)toggleStatusBarStyle:(id)sender {
    BOOL newStyle = ([UIApplication sharedApplication].statusBarStyle == UIStatusBarStyleDefault) ? UIStatusBarStyleLightContent :
                                                                                                    UIStatusBarStyleDefault;
    [self od_setStatusBarStyle:newStyle animated:YES];
}

- (IBAction)toggleNavigationBarVisibility:(id)sender {
    self.navigationController.navigationBarHidden = !self.navigationController.navigationBarHidden;
}

@end
