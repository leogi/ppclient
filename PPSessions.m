//
//  PPLogin.m
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/16.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPSessions.h"
#import "PPAppConstant.h"

@implementation PPSessions


- (void)login:(NSString *)email :(NSString *)password{
    NSLog(@"%@ - %@", email, password);
    
    PPHttpRequestStringParam* requestdata = [[PPHttpRequestStringParam alloc] initForStringParams];
    [requestdata appendParams:@"session[email]" : email];
    [requestdata appendParams:@"session[password]" : password];
    
    NSString* url = [NSString stringWithFormat:@"%@%@", Hostname, LoginEndpoint];
    PPHttpRequest *request = [[PPHttpRequest alloc] initWithDelegate:self forEndPoint: url forMethod:POST forRequestData: [requestdata toParams]];
    [request connectForStringParams]; // run
}

- (void)logout{
    NSMutableString* data = [[NSMutableString alloc] init];
    NSString* url = [NSString stringWithFormat:@"%@%@", Hostname, LogoutEndpoint];
    PPHttpRequest *request = [[PPHttpRequest alloc] initWithDelegate:self forEndPoint: url forMethod:DELETE forRequestData:data];
    [request connectForStringParams]; // run
}

@end
