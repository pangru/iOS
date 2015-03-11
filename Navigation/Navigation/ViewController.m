//
//  ViewController.m
//  Navigation
//
//  Created by Eizer_N34 on 2015. 3. 11..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

/*
- (IBAction)click:(id)sender {
    // 사용자가 만들지 않아도 실행 초기에 UIApplication 객체가 만들어집니다.
    // shared가 붙은 함수는 singleTon 의 개념으로 이해라 수 있음
    UIApplication* app = [UIApplication sharedApplication];
    
    // 사건이 경과해도 화면은 끄지 말아달라
    app.idleTimerDisabled = YES;
    
    // 스키마로 다른 애플리케이션을 수행하는 방법
    //NSURL* url = [NSURL URLWithString:@"http://www.naver.com"];
    NSURL* url = [NSURL URLWithString:@"tel://010-1234-0700"];
    
    [app openURL:url];  // YES : 설치 됨, NO: 설치 안됨
}
*/
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
@end
