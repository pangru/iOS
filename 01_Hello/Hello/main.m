//
//  main.m
//  Hello
//
//  Created by Eizer_N34 on 2015. 3. 9..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, @"AppDelegate");
    }
}

// UIApplicationMain 함수의 역할
// 1. UIApplication 이라는 클래스의 인스턴스를 만듭니다.
// 2. UIApplication의 delegate가 되는 클래스의 인스턴스를 생성해준다. - AppDelegate
// 3. 이 모든 초기화 작업이 끝나면, delegate 에 첫번째 메세지를 보냅니다.
// 4. autoreleasepool 에 
