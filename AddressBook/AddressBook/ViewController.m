//
//  ViewController.m
//  AddressBook
//
//  Created by Eizer_N34 on 2015. 3. 13..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "ViewController.h"
#import <AddressBook/AddressBook.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 1. AddressBook.framework 추가 해야 된다.
- (IBAction)click1:(id)sender {
    ABAddressBookRequestAccessWithCompletion(ABAddressBookCreateWithOptions(NULL, nil), ^(bool granted, CFErrorRef error) {
        if (!granted) {
            NSLog(@"허용 됨");
        } else {
            NSLog(@"혀용!");
        }
    });
}

- (IBAction)click2:(id)sender {
    CFErrorRef* error = nil;
    
    ABAddressBookRef addressBook = ABAddressBookCreateWithOptions(NULL, error);
    ABRecordRef source = ABAddressBookCopyDefaultSource(addressBook);
    
    CFArrayRef allPeople = ABAddressBookCopyArrayOfAllPeopleInSource(addressBook, source);
    
    CFIndex nPeople = ABAddressBookGetPersonCount(addressBook);
    
    people = [[NSMutableArray alloc] initWithCapacity:nPeople];
    for ( int i = 0; i < nPeople; i++) {
        ABRecordRef person = CFArrayGetValueAtIndex(allPeople, i);
        NSString* first = (__bridge NSString *)(ABRecordCopyValue(person, kABPersonFirstNameProperty));
        NSString* last = (__bridge NSString *)(ABRecordCopyValue(person, kABPersonLastNameProperty));
        
        NSLog(@"%@  %@", first, last);
        
        [people addObject:[NSString stringWithFormat:@"%@ %@", first, last]];
    }
    
    [_tableView reloadData];    //listView.notifDataSetChanged
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [people count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellID = @"Cell";
    UITableViewCell* cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:cellId forIndexPath:indexPath];
}
@end
