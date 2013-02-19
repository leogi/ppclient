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
    NSString *boundary = @"0xKhTmLbOuNdArY";
    
    NSMutableData *body = [NSMutableData data];
	[body appendData:[[NSString stringWithFormat:@"--%@\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"Content-Disposition: form-data; name=\"user[avatar]\"; filename=\"thefilename\"\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"Content-Type: application/octet-stream\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[NSData dataWithData:avatarData]];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"Content-Disposition: form-data; name=\"user[nickname]\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"paramstringvalue1" dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"Content-Disposition: form-data; name=\"user[email]\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"paramstringvalue2" dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"r\n--%@--\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSString* url = [NSString stringWithFormat:@"%@%@%@", Hostname, UsersUpdateEndPoint,@"1"];
    PPHttpRequest* request = [[PPHttpRequest alloc] initWithDelegateForUpload:self forEndPoint: url forMethod: PUT forRequestData: body];
    
    [request connectForUpload];
    
}

@end
