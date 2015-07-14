//
//  main.m
//  UIVC_ODStatusBar
//
//  Created by Alexey Nazaroff on 26.06.14.
//  Copyright (c) 2014 Alexey Nazaroff. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface TestUIApplication : UIApplication
@end

@implementation TestUIApplication

- (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle {
    [super setStatusBarStyle:statusBarStyle];
}

- (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle animated:(BOOL)animated {
    [super setStatusBarStyle:statusBarStyle animated:animated];
}

- (UIStatusBarStyle)statusBarStyle {
    return [super statusBarStyle];
}

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, NSStringFromClass(TestUIApplication.class), NSStringFromClass([AppDelegate class]));
    }
}
