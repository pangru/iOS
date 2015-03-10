//
//  AppDelegate.m
//  Hello
//
//  Created by Eizer_N34 on 2015. 3. 10..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"App 시작");
    
    // 현재 화면 사이즈 가져오기
    CGRect frame = [[UIScreen mainScreen] bounds];
    // 구체적인 화면 크기 지정하는 경우
    CGRect rect = CGRectMake(0, 0, 100, 100);
    rect.origin.x = 0;
    rect.origin.y = 0;
    rect.size.width = 100;
    rect.size.height = 100;
    
    self.window = [[UIWindow alloc] initWithFrame:frame];
    [_window makeKeyAndVisible];
    _window.backgroundColor = [UIColor blueColor];

    return YES; // execute runLoop
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}
@end
