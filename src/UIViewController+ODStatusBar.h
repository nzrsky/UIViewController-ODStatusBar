//
//  UIViewController+ODStatusBar.h
//  ODx
//
//  Created by Alexey Nazaroff on 26.06.14.
//  Copyright (c) 2014 Alexey Nazaroff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/** 
 Global UIStatusBar state management
 
 @warning: This category override original methods:
    - (BOOL)prefersStatusBarHidden;
    - (UIStatusBarAnimation)preferredStatusBarUpdateAnimation;
    - (UIStatusBarStyle)preferredStatusBarStyle;
*/

@interface UIViewController (OD_StatusBar)

// Hides or shows the status bar, optionally animating the transition.
- (void)od_setStatusBarHidden:(BOOL)hidden;
- (void)od_setStatusBarHidden:(BOOL)hidden withAnimation:(UIStatusBarAnimation)animation;

// Sets the style of the status bar, optionally animating the transition to the new style.
- (void)od_setStatusBarStyle:(UIStatusBarStyle)style;
- (void)od_setStatusBarStyle:(UIStatusBarStyle)style animated:(BOOL)animated;

// Manually update status bar appearance.
- (void)od_updateStatusBarAppearanceAnimated:(BOOL)animated;
@end
