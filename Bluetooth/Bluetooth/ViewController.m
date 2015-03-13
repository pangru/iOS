//
//  ViewController.m
//  Bluetooth
//
//  Created by Eizer_N34 on 2015. 3. 13..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)connect:(id)sender;

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

- (IBAction)connect:(id)sender {
    // 1:1 접속은 간단하게 지원하고 있습니다.
    pickerController = [[GKPeerPickerController alloc] init];
    
    pickerController.delegate = false;
    pickerController.connectionTypesMask = GKPeerPickerConnectionTypeNearby;
    
    [pickerController show];
}

// 접속 성공하면 아래 함수가 호출됩니다
-(void)peerPickerController:(GKPeerPickerController *)picker didConnectPeer:(NSString *)peerID toSession:(GKSession *)session {
    NSLog(@"%@ 접속 되었습니다.", [gkSession displayNameForPeer:peerID]);
    
    [picker dismiss];
    
    session.delegate = false;
    [session setDataReceiveHandler:self withContext:nil];
}

- (GKSession* )peerPickerController:(GKPeerPickerController *)picker sessionForConnectionType:(GKPeerPickerConnectionType)type {
    gkSession = [[GKSession alloc] initWithSessionID:@"TEST"
                                         displayName:@"Player1"
                                         sessionMode:GKSessionModePeer];
    
    return gkSession;
}

@end
