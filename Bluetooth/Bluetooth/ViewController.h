//
//  ViewController.h
//  Bluetooth
//
//  Created by Eizer_N34 on 2015. 3. 13..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GameKit/GameKit.h> // GameKit.framework
@interface ViewController
: UIViewController<GKPeerPickerControllerDelegate, GKSessionDelegate> {
    GKSession* gkSession;
    GKPeerPickerController* pickerController;
}


@end

