//
//  ViewController.h
//  Campfire
//
//  Created by Eizer_N34 on 2015. 3. 11..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *speed;
@property (weak, nonatomic) IBOutlet UIImageView* imageView;
- (IBAction)pause:(id)sender;
- (IBAction)play:(id)sender;
- (IBAction)speed:(id)sender;

@end
