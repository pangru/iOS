//
//  ViewController.h
//  Picker
//
//  Created by Eizer_N34 on 2015. 3. 11..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <UIKit/UIKit.h>

// xxxDataSource : data를 채우기 위한 함수의 집합
// xxxDelegate   : event를 처리하기 위한 함수의 집합

@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@property (strong, nonatomic) NSArray *animals;;
@property (strong, nonatomic) NSArray *fruits;

@end
