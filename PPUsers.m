//
//  PPUsers.m
//  PPClient
//
//  Created by Nghia Le Van on 13/02/19.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPUsers.h"

@implementation PPUsers

@synthesize avatarUrl;
@synthesize avatarData;
@synthesize uid;
@synthesize nickname;

- (void)setAvatarUrl:(NSURL *)url{
    avatarUrl = url;
    avatarData = [NSData dataWithContentsOfURL:avatarUrl];
}

- (void)update{
 
    PPHttpRequestDataParam* requestdata = [[PPHttpRequestDataParam alloc] initForDataParams];
    [requestdata appendParams:@"user[avatar]" forFilename:@"test.jpg" forDataValue: avatarData];
    [requestdata appendParams:@"user[nickname]" forStringValue: @"dainghiavotinh"];
    [requestdata appendParams:@"user[email]" forStringValue:@"nghialv.bk@gmail.com"];
    
    NSString* url = [NSString stringWithFormat:@"%@%@%@", Hostname, UsersUpdateEndPoint,@"1"];
    PPHttpRequest* request = [[PPHttpRequest alloc] initWithDelegateForUpload:self forEndPoint: url forMethod: PUT forRequestData: [requestdata toParams]];
    
    [request connectForDataParams];
    
}
- (void)destroy{
    NSString* url = [NSString stringWithFormat:@"%@%@%@", Hostname, UsersDestroyEndPoint, @"1"];
    PPHttpRequest* request = [[PPHttpRequest alloc] initWithDelegate:self forEndPoint:url forMethod:DELETE forRequestData: [[NSMutableString alloc] init]];
    [request connectForStringParams];
}
@end
