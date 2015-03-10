//
//  AppDelegate.h
//  Hello
//
//  Created by Eizer_N34 on 2015. 3. 10..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <UIKit/UIKit.h>

// iOS 4.0 까지는 AppDelegate 부모가 NSObject
// 5.0으로 오면서부터 변경됩니다. - 터치 관련 이벤트 기능 때문입니다.
@interface AppDelegate : NSObject<UIApplicationDelegate>

@property(nonatomic, strong) UIWindow* window;

@end
