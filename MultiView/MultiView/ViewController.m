//
//  ViewController.m
//  MultiView
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()
- (IBAction)click1:(id)sender;
- (IBAction)click2:(id)sender;
- (IBAction)click3:(id)sender;
@end

@implementation ViewController

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

/*
- (IBAction)click1:(id)sender {
    NSLog(@"Clicked 1");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown
                           forView:self.view
                             cache:YES];
    
//    [self.view addSubview:_childView];
    [self.view insertSubview:_childView atIndex:0];
}
 */

- (IBAction)click1:(id)sender {
    NSLog(@"Clicked 1");
    _childView.frame = CGRectMake(0, 0, 0, 0);
    _childView.transform = CGAffineTransformMakeRotation(3.14);
    
//    [self.view addSubview:_childView];
    [self.view insertSubview:_childView atIndex:0];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    
    _childView.frame = CGRectMake(0, 0, 320, 520);
    _childView.transform = CGAffineTransformMakeRotation(0);
    
    [UIView commitAnimations];
}

- (IBAction)click2:(id)sender {
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.view cache:YES];
    
    [_childView removeFromSuperview];

    [UIView commitAnimations];
}

- (IBAction)click3:(id)sender {
    // 1. ViewController를 만들면서 xib를 로드하고
    
    FirstViewController* fvc = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    
    // 2-1. set modal show effect
    fvc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    // 2-2. 나타낸다
    [self presentViewController:fvc animated:YES completion:nil];
}
@end
