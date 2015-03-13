//
//  ViewController.m
//  Thread
//
//  Created by Eizer_N34 on 2015. 3. 13..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) NSThread* thread;

- (IBAction)start:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)lockThread:(id)sender;

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

- (void)updateLabel:(NSString *)s {
    _label.text = s;
}

- (void)foo {
    for (int j = 0; j < 100; j++) {
        if ([_thread isCancelled]) {
            break;
        }
        
        static int i = 0;
        NSLog(@"foo : %d", i++);
        
        //UI업데이트는 메인 스레드에 요청 해야 한다.
        //_label.text = [NSString stringWithFormat:@"%02d", i];
        NSString* s = [NSString stringWithFormat:@"%02d", i];
        [self performSelectorOnMainThread:@selector(updateLabel:) withObject:s waitUntilDone:YES];
        [NSThread sleepForTimeInterval:0.5];
    }
}

- (IBAction)start:(id)sender {
    _thread = [[NSThread alloc] initWithTarget:self selector:@selector(foo) object:nil];
    [_thread start];
}

- (IBAction)cancel:(id)sender {
    [_thread cancel];
}

NSLock* lock;
int x = 100;    //전역 변수
- (void)goo {
    
//    [lock lock];
    @synchronize(self) {
    x = 100;
    usleep(5);
    x = x + 1;
    }
    
//    [lock unlock];
    
    NSLog(@"%d", x);
}

- (IBAction)lockThread:(id)sender {
    lock = [[NSLock alloc] init];
    
    [NSThread detachNewThreadSelector:@selector(goo) toTarget:self withObject:nil];
    [NSThread detachNewThreadSelector:@selector(goo) toTarget:self withObject:nil];
    [NSThread detachNewThreadSelector:@selector(goo) toTarget:self withObject:nil];
}
@end
