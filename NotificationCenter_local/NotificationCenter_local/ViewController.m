//
//  ViewController.m
//  NotificationCenter_local
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)click:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    UIApplication* app = [UIApplication sharedApplication];
    
    // iOS 하위레벨 호환성을 위해서 추가되어야 하는 로직
    // registerUserNotificationSettings 함수는 iOS 7 부터 지원함
    if ([app respondsToSelector:@selector(registerUserNotificationSettings:)]) {
        [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert | UIUserNotificationTypeBadge | UIUserNotificationTypeSound categories:nil]];
    }
    UILocalNotification *noti = [UILocalNotification alloc];
    noti.alertBody = @"Hello world";
    noti.fireDate = [_datePicker date];
    
    [[UIApplication sharedApplication] scheduleLocalNotification:noti];
}
@end
