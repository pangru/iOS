//
//  ViewController.m
//  MultiView_2
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)showInfo:(id)sender;

@end

@implementation ViewController

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller {
   // 여기서 내리면 된다.
    NSLog(@"flipsideViewControllerDidFinish");
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showInfo:(id)sender {
    FlipsideViewController * fvc = [[FlipsideViewController alloc] initWithNibName:@"FlipsideViewController" bundle:nil];
    
    fvc.delegate = self;
    [self presentViewController: fvc animated:YES completion:nil];
}
@end
