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
    NSURL* url = [NSURL URLWithString:@"http://www.naver.com"];
    NSString* s = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"HttpGet %@", s);
}

NSString* imgURL = @"http://imgmovie.naver.net/mdi/mi/0400/D0045-14.jpg";
- (IBAction)downloadImg:(id)sender {
    NSLog(@"Download Image");
    NSURL* url = [NSURL URLWithString:imgURL];
    
    // NSData는 1bytes로 표현될 수 있는 자원들을 받을 수 있음
    // image, mp3, wav, ... 모두 NSData로 가져오면 됩니다
    NSData* data = [NSData dataWithContentsOfURL:url];
    UIImage* img = [UIImage imageWithData:data];
    
    _imageView.image = img;
}

// 2. NSURL 동기 방식으로 호출함
- (IBAction)downloadImg2:(id)sender {
    NSLog(@"Download Image2");
    NSURL* url = [NSURL URLWithString:imgURL];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    NSHTTPURLResponse* response;
    
    NSData* data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
    
    if (response == nil ) {
        NSLog(@"there is no server");
        return;
    }
    
    // typedef long NSInteger;
    NSInteger code = [response statusCode];
    NSLog(@"status code %ld", code);
    
    NSDictionary* dic = [response allHeaderFields];
    
    NSString* type = [dic objectForKey:@"content-Type"];
    if ([type hasPrefix:@"image"]) {
        _imageView.image = [UIImage imageWithData:data];
    }
}

// 3. NSURL 비동기 방식 호출
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"응답이 처음 도착");
    buffer = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [buffer appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    _imageView.image = [UIImage imageWithData:buffer];
}

- (IBAction)downloadImg3:(id)sender {
    NSLog(@"Download Image3");
    NSURL* url = [NSURL URLWithString:imgURL];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    
    NSURLConnection* connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
}
@end
