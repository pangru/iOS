//
//  13_advancedProtocol.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 10..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Printer : NSObject<NSURLConnectionDataDelegate>
@property(retain) NSMutableData* incomingData;
@end


@implementation Printer

- (void)dealloc
{
    [_incomingData release];
    [super dealloc];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"downloading...");
    
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"finished");
    NSString* string = [[NSString alloc] initWithData: _incomingData encoding:NSUTF8StringEncoding];
    
    NSLog(@"downloading bytes : %lu", [string length]);
    
    NSLog(@"\n%@", string);
}

@end


int main() {
    Printer* printer = [[Printer alloc] init];
    NSURL* url = [NSURL URLWithString:@"http://naver.com"];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    
    __unused NSURLConnection* connection = [[NSURLConnection alloc] initWithRequest:request delegate:printer startImmediately:YES];
    
    [[NSRunLoop currentRunLoop] run];
}