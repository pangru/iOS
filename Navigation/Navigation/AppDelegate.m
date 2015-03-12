//
//  AppDelegate.m
//  Navigation
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [_window makeKeyAndVisible];

    // 1. navi 위에 올라갈 RootViewController 를 먼저 만들어야 한다.
    FirstViewController* fvc = [[FirstViewController alloc]
                                initWithNibName:@"FirstViewController" bundle:nil];
    
    // 2. 이제 Navi를 만들자
    self.naviController = [[UINavigationController alloc] initWithRootViewController:fvc];
    
    
    _window.rootViewController = _naviController;
    
    return YES;
}
@end
