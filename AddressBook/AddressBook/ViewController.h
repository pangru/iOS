//
//  ViewController.h
//  AddressBook
//
//  Created by Eizer_N34 on 2015. 3. 13..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController
: UIViewController<UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray* people;
}

- (IBAction)click1:(id)sender;
- (IBAction)click2:(id)sender;

@end

