//
//  DetailViewController.h
//  MasterDetail
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

//@property (strong, nonatomic) NSDate* dateItem;
// 범용적인 측면에서 id타입을 활용하여 선언함
@property (strong, nonatomic) id dateItem;
@property (strong, nonatomic) id item;

@end
