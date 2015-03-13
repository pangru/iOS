//
//  ViewController.m
//  CustomView
//
//  Created by Eizer_N34 on 2015. 3. 13..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"
#import "MyAlertView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    MyAlertView* alertView = [[MyAlertView alloc] initWithTitle:@"Title" message:@"message" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];

    [alertView show];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
