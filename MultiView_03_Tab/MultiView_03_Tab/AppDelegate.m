//
//  AppDelegate.m
//  MultiView_03_Tab
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // 1. Tab 위에 올라갈 ViewController 를 먼저 만들고
    FirstViewController* fvc = [[FirstViewController alloc]
                                initWithNibName:@"FirstViewController" bundle:nil];
    SecondViewController* svc = [[SecondViewController alloc]
                                 initWithNibName:@"SecondViewController" bundle:nil];
    
    svc.title = @"Second";
    fvc.title = @"First";
    
    // 2. 모든 View Controller 를 배열에 담아야 된다.
    NSArray* arr = @[fvc, svc];
    
    // 3. TabBarController 를 만들고
    self.tabController = [[UITabBarController alloc] init];
    
    //4. 배열을 연결 - 배열의 갯수만큼 탭이 생성됩니다.
    _tabController.viewControllers = arr;
    
    _window.rootViewController = _tabController;
    
    [_window makeKeyAndVisible];
    
    return YES;
}

@end
