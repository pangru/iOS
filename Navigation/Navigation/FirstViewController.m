//
//  FirstViewController.m
//  Navigation
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)foo {
    NSLog(@"foo");
    // 1. ViewController 를 만들고
    SecondViewController* svc = [[SecondViewController alloc]
                                 initWithNibName:@"SecondViewController" bundle:nil];
    
    // 2. 네비게이션 컨트롤러 안에 있는 모든 뷰 컨트롤러는 naviController 의 포인터를 알고 있다
    [self.navigationController pushViewController:svc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = @"품목";
    self.navigationItem.prompt = @"언제나 신선한 식품";

    UIBarButtonItem* button = [[UIBarButtonItem alloc]
                               initWithTitle:@"추가" style:UIBarButtonItemStylePlain
                               target:self
                               action:@selector(foo)];
    self.navigationItem.rightBarButtonItem = button;
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

@end
