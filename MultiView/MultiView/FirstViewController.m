//
//  FirstViewController.m
//  MultiView
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
- (IBAction)close:(id)sender;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)close:(id)sender {
    // Modal 로 나타난 현재 창을 닫으려면
    // [부모 컨트롤러 diss..~~ ] 구조여야 함
    
    // 부모 컨트롤러를 모를 경우,
    // 아래 처럼 하면
    // 1. self 위에 다시 View Controller가 있으면 내린다.
    // 2. self 위에 View Controller가 없으면 자신을 스스로 내린다.
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
