//
//  ViewController.m
//  RandomColor
//
//  Created by Eizer_N34 on 2015. 3. 11..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+RandomColor.h"

// 익명의 카테고리
@interface ViewController ()
    // 메소드나, 인스턴스 멤버
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

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Touch!");
    self.view.backgroundColor = [UIColor randomColor];
}
@end
