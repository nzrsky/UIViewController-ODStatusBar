//
//  UIViewController+StatusBar.m
//  ODx
//
//  Created by Alexey Nazaroff on 26.06.14.
//  Copyright (c) 2014 Alexey Nazaroff. All rights reserved.
//

#import "UIViewController+ODStatusBar.h"

#define OD_iOS7x (NSFoundationVersionNumber >= NSFoundationVersionNumber_iOS_7_0)

@implementation UIViewController (OD_StatusBar)

static const NSTimeInterval kStatusBarAnimationDuration = 0.2f;

static BOOL __statusBarHidden = NO;
static UIStatusBarAnimation __statusBarUpdateAnimation = YES;
static UIStatusBarStyle __statusBarStyle = UIStatusBarStyleDefault;

- (void)od_updateStatusBarAppearanceAnimated:(BOOL)animated {
    if (animated) {
        [UIView animateWithDuration:kStatusBarAnimationDuration animations:^{
            [self setNeedsStatusBarAppearanceUpdate];
        }];
    } else  {
        [self setNeedsStatusBarAppearanceUpdate];
    }
}


- (void)od_setStatusBarHidden:(BOOL)hidden {
    [self od_setStatusBarHidden:hidden withAnimation:UIStatusBarAnimationNone];
}

- (void)od_setStatusBarHidden:(BOOL)hidden withAnimation:(UIStatusBarAnimation)animation {
    if (OD_iOS7x) {
        @synchronized([UIApplication sharedApplication]) {
            __statusBarUpdateAnimation = animation;
            __statusBarHidden = hidden;
        }

        [self od_updateStatusBarAppearanceAnimated:animation != UIStatusBarAnimationNone];
    } else {
        [[UIApplication sharedApplication] setStatusBarHidden:hidden withAnimation:animation];
    }
}

- (void)od_setStatusBarStyle:(UIStatusBarStyle)style {
    [self od_setStatusBarStyle:style animated:NO];
}

- (void)od_setStatusBarStyle:(UIStatusBarStyle)style animated:(BOOL)animated {
    if (OD_iOS7x) {
        @synchronized([UIApplication sharedApplication]) {
            __statusBarStyle = style;
        }
    
        UINavigationBar *bar = ([self isKindOfClass:UINavigationController.class]) ? ((UINavigationController *) self).navigationBar :
                                                                                     self.navigationController.navigationBar;
        if (bar.isHidden) {
            [self od_updateStatusBarAppearanceAnimated:animated];
        } else {
            if (style == UIStatusBarStyleLightContent) {
                bar.barStyle = UIBarStyleBlack;
            } else if (style == UIStatusBarStyleDefault) {
                bar.barStyle = UIBarStyleDefault;
            }
        }
    } else {
        [[UIApplication sharedApplication] setStatusBarStyle:style animated:animated];
    }
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"
- (BOOL)prefersStatusBarHidden {
    return __statusBarHidden;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    return __statusBarUpdateAnimation;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return __statusBarStyle;
}
#pragma clang diagnostic pop

@end

