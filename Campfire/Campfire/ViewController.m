//
//  ViewController.m
//  Campfire
//
//  Created by Eizer_N34 on 2015. 3. 11..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // XIB가 로드되고, View가 만들어진 후에 바로 이 함수가 호출된다.
    // 여기서 view의 초기화 코드를 작성하면 된다.
    
    // 1 개의 이미지를 로드
//    UIImage *img = [UIImage imageNamed:@"campFire01.gif"];
    NSMutableArray* arr = [[NSMutableArray alloc] init];
    
    for (int i = 0; i  < 17; ++i) {
        NSString* s = [NSString stringWithFormat:@"campFire%02d.gif", i + 1];
        UIImage* img = [UIImage imageNamed:s];
        
        [arr addObject:img];
    }
    
    NSLog([NSString stringWithFormat:@"length? %d", [arr count]]);

    // Image View에 그림의 배열을 연결한다
    _imageView.animationImages = arr;
    _imageView.animationDuration = 7;
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

- (IBAction)pause:(id)sender {
    NSLog(@"pause..");
    [_imageView stopAnimating];
}


- (IBAction)play:(id)sender {
    NSLog(@"play..");
    [_imageView startAnimating];
}
- (IBAction)speed:(id)sender {
    NSLog([NSString stringWithFormat:@"speed %lf", _speed.value]);
    _imageView.animationDuration = (1 - _speed.value);
    
    BOOL isPlaying = [_imageView isAnimating];
    if (isPlaying) {
        [_imageView startAnimating];
    }
}
@end
