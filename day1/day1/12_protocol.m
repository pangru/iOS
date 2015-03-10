//  프로토콜
//  개념: 두 개의 객체 사이의 지켜야 하는 약속 (다른 언어의 인터페이스)
//  1. 프로토콜을 만드는 모양 - @protocol
//  2. id<프로토콜 이름> delegate;
//  3. 프로토콜을 준수하는 클래스를 만드는 모양
//     : @interface 클래스 이름: 부모 < 프로토콜 이름 >
//  4. Delegate pattern
//     : loc.delegate = p;
//  5. @optional, @required 키워드
//     : @required : default. 필수 구현해야 하지만, 안해도 warning만 발생함
//     : @optional : 구현하지 않아도 됨


//  12_protocol.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 10..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <Foundation/Foundation.h>


// 대부분의 프로토콜이 XXXDelegate 라는 이름을 사용합니다.
@protocol CLLocationManagerDelegate <NSObject>
@required   // 구현하지 않으면  warning발생
- (void)updateLocation;
@optional   // 구현하지 않아도 warning 발생하지 않음
- (void)failToUpdate;
@end

@interface CLLocationManager : NSObject
@property(weak) id<CLLocationManagerDelegate> delegate;
- (void)startUpdateLocation;
@end


@implementation CLLocationManager

- (void)startUpdateLocation {
    if (YES)
        [_delegate updateLocation];
    else
        [_delegate failToUpdate];
}

@end

// <Protocol name> 해당 프로토콜을 준수하고 있음을 의미함
// @interface  CLASS_NAME :  PARANT<PROTOCOL_NAME, PROTOCOL_NAME>
@interface Car : NSObject<CLLocationManagerDelegate>

@end

@implementation Car

- (void)updateLocation { NSLog(@"...");}
- (void)failtToUpdate{}
@end


int main() {
    CLLocationManager* clm = [[CLLocationManager alloc] init];
    
    Car* p = [[Car alloc] init];
    [clm setDelegate:p];
    [clm startUpdateLocation];
}
