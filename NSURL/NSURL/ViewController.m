//
//  ViewController.m
//  NSURL
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)loadResource:(id)sender;
- (IBAction)httpGet:(id)sender;
- (IBAction)downloadImg:(id)sender;
- (IBAction)downloadImg2:(id)sender;
- (IBAction)downloadImg3:(id)sender;

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

- (IBAction)loadResource:(id)sender {
    NSLog(@"LoadResource");
    // 기본 Image 구현하는 방법 1.
    // UIImage* img = [UIImage imageNamed:@"img.gif"];
    
    // 기본 Image 구현하는 방법 2.
    //  Bundle을 활용하여 image 정보를 가져옴
    NSBundle* bundle = [NSBundle mainBundle];
    NSString* path = [bundle pathForResource:@"img" ofType:@"gif"];
    NSLog(@"%@", path);
    
    NSURL* url = [NSURL fileURLWithPath:path];
    NSData* data = [NSData dataWithContentsOfURL:url];
    UIImage* img = [UIImage imageWithData:data];
    
    _imageView.image = img;
}

- (IBAction)httpGet:(id)sender {
    NSLog(@"HttpGet");
}

- (IBAction)downloadImg:(id)sender {
    NSLog(@"Download Image");
}

- (IBAction)downloadImg2:(id)sender {
    NSLog(@"Download Image2");
}

- (IBAction)downloadImg3:(id)sender {
    NSLog(@"Download Image3");
}
@end
