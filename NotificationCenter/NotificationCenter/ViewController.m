//
//  ViewController.m
//  NotificationCenter
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)click:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;

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

- (void)foo {
    // 장치에 관련된 모든 정보는 UIDevice 객체를 사용하면 됩니다.
    UIDevice* device = [UIDevice currentDevice];
    float f = [device batteryLevel];
    NSLog(@"%f", f);
}

- (IBAction)click:(id)sender {
    
    UIDevice* device = [UIDevice currentDevice];
    [device setBatteryMonitoringEnabled:YES];
    
    NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self selector:@selector(foo) name:UIDeviceBatteryLevelDidChangeNotification object:nil];
    
    // 처음에는 통보 없이 조사.
    [self foo];
    
    [nc addObserver:self selector:@selector(showKeyboard:) name:UIKeyboardWillShowNotification object:nil];
    [nc addObserver:self selector:@selector(hideKeyboard:) name:UIKeyboardWillHideNotification object:nil];
    
}

- (void)showKeyboard:(NSNotification *)notification {
    NSLog(@"%s", __func__);
    
//    self.view.frame = CGRectMake(0, -216, 320, 480);
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    frame.origin.y += -216;
    self.view.frame = frame;
}

- (void)hideKeyboard:(NSNotification *)notification {
    NSLog(@"%s", __func__);
//    self.view.frame = CGRectMake(0, 0, 320, 480);
    CGRect frame = [[UIScreen mainScreen] bounds];
    self.view.frame = frame;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *) event {
    [_textField resignFirstResponder];
}
@end
