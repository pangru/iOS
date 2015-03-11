//
//  ViewController.m
//  Picker
//
//  Created by Eizer_N34 on 2015. 3. 11..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        return 2;
    }
    
    long index = [_pickerView selectedRowInComponent:0];
    if (index == 0)
        return _animals.count;
    
    return _fruits.count;
}

/*

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    if (component == 0) {
        if (row == 0)
            return @"animal";
        else
            return @"fruits";
    }
    
    int index = [_pickerView selectedRowInComponent:0];
    if (index == 0)
        return _animals[row];
    else
        return _fruits[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0) {
        [_pickerView reloadComponent:1];
    }
}
*/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
//    self.animals = [NSArray arrayWithObjects:@"lion", @"tiger", @"bear", @"wolf", @"snake", @"rabbit", nil];
//    self.fruits = [NSArray arrayWithObjects:@"apple", @"peer", @"banana", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
