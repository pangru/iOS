//
//  AppDelegate.m
//  sample
//
//  Created by Eizer_N34 on 2015. 3. 10..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (void)alertView:(UIAlertView *) alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"%ld", (long)buttonIndex);
}

- (void)foo {
    NSLog(@"foo");
    UIAlertView* view = [[UIAlertView alloc] initWithTitle:@"Title"
                                                   message:@"message"
                                                  delegate:self
                                         cancelButtonTitle:@"Cancel"
                                         otherButtonTitles: nil];
    [view show];
}

- (void)addActionSheet {
    NSLog(@"addActionSheed");
    
    UIActionSheet* sheet = [[UIActionSheet alloc] initWithTitle:@"SheetTitle"
                                                       delegate:self
                                              cancelButtonTitle:@"Cancel"
                                         destructiveButtonTitle:@"DestructiveButon"
                                              otherButtonTitles:@"no", nil];

    [sheet showInView:_window];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOption {

    CGRect frame = [[UIScreen mainScreen] bounds];
    NSLog(@"%lf %lf", frame.size.width, frame.size.height);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _window.backgroundColor = [UIColor blackColor];
    
    // 버튼도 팩토리 메소드를 통해 만들 수 있다
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    CGRect bframe = CGRectMake(10, 10, 100, 100);
    button.frame = bframe;
    [button setTitle:@"AAA" forState:UIControlStateNormal];

    //버튼을 누를 때, 핸들러를 등록하는 코드
    [button addTarget:self action:@selector(foo) forControlEvents:UIControlEventTouchUpInside];

    UIButton* button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(200, 200, 100, 100);
    [button2 setTitle:@"BBB" forState:UIControlStateNormal];
    
    [button2 addTarget:self action:@selector(addActionSheet) forControlEvents:UIControlEventTouchUpInside];
    //UIActionSheet
    
    
    [_window addSubview:button];
    [_window addSubview:button2];
    
    [_window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
