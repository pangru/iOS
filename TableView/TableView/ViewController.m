//
//  ViewController.m
//  TableView
//
//  Created by Eizer_N34 on 2015. 3. 11..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

// iOS 7 이후로는 해당하는 함수만 동작합니다.
// 상단 Status bar를 없애줌
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

// 아래 메소드는 매우 중요...
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (cell == nil) {
        NSBundle* bundle = [NSBundle mainBundle];
        NSArray* arr = [bundle loadNibNamed:@"MyTableViewCell" owner:nil options:nil];
        
        cell = arr[0];
    } else {
        NSLog(@"Cell reused");
    }
    
    cell.name.text = @"도라에몽";
    cell.phone.text = @"010 1234 0790";
    cell.profile.image = [UIImage imageNamed:@"sample.jpg"];
    

    // XIB을 로드하는 2가지 방법
    // 1. ViewController를 만들면서 로드하는 방법 - initWithNibName
    // 2. NSBundle을 사용하는 방법              - loadNibName

    
    /*
     // 기본 Table 재생성 코드
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (cell == nil ) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyCell"];
        NSLog(@"Cell created");
    } else {
        NSLog(@"Cell reused");
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld-%ld", indexPath.section, indexPath.row];
    
    cell.detailTextLabel.text = @"description";
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.imageView.image = [UIImage imageNamed:@"sample.jpg"];
    */
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
