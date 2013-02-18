//
//  PPLogin.m
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/16.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPLogin.h"
#import "PPAppConstant.h"

@implementation PPLogin


- (void)login:(NSString *)email :(NSString *)password{
    NSLog(@"%@ - %@", email, password);
    NSMutableString* data = [[NSMutableString alloc] init];
    [data appendString:@"session[email]="];
    [data appendString:email];
    [data appendString:@"&session[password]="];
    [data appendString:password];
    PPHttpRequest *request = [[PPHttpRequest alloc] initWithDelegate:self forEndPoint: LoginEndpoint forMethod:POST forRequestData:data];
    [request connect]; // run
}

- (void)logout{
    NSMutableString* data = [[NSMutableString alloc] init];
    PPHttpRequest *request = [[PPHttpRequest alloc] initWithDelegate:self forEndPoint: LogoutEndpoint forMethod:DELETE forRequestData:data];
    [request connect]; // run
}

@end
