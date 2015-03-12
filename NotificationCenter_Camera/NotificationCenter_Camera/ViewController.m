//
//  ViewController.m
//  NotificationCenter_Camera
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)click1:(id)sender;
- (IBAction)click2:(id)sender;

@end

@implementation ViewController

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage* img1 = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage* img2 = [info objectForKey:UIImagePickerControllerEditedImage];
    
    NSLog(@"%p", img1);
    NSLog(@"%p", img2);
    _imageView.image = img1;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// photo album
- (IBAction)click1:(id)sender {
    UIImagePickerController* picker = [[UIImagePickerController alloc] init];
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    picker.delegate = self;
    picker.editing = YES;

    [self presentViewController:picker animated:YES completion:nil];
}

// camera

- (IBAction)click2:(id)sender {
    UIImagePickerController* picker = [[UIImagePickerController alloc] init];
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:nil];
}
@end
