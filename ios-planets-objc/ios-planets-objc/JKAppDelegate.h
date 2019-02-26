//
//  JKAppDelegate.h
//  ios-planets-objc
//
//  Created by TuneUp Shop  on 2/25/19.
//  Copyright © 2019 jkaunert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(nullable NSDictionary *)launchOptions;

- (BOOL)application:(UIApplication *)application shouldSaveApplicationState:(NSCoder *)coder;

- (BOOL)application:(UIApplication *)application shouldRestoreApplicationState:(NSCoder *)coder;

@end

