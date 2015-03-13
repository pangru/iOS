//
//  MasterViewController.h
//  Weather
//
//  Created by Eizer_N34 on 2015. 3. 13..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UITableViewController<NSXMLParserDelegate> {
    NSMutableArray* array;      //모든 지역정보 저장
    NSMutableDictionary* dic;   // 한 개의 지역정보 저장
    int valid;
    int index;
}


@end

