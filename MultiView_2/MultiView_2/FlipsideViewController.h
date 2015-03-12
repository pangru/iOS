//
//  FlipsideViewController.h
//  MultiView_2
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;
@protocol FlipsideViewControllerDelegate

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;

@end

@interface FlipsideViewController : UIViewController
@property (weak, nonatomic) id<FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;
@end
