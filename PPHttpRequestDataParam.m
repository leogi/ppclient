//
//  PPHttpRequestDataParam.m
//  PPClient
//
//  Created by Nghia Le Van on 13/02/20.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPHttpRequestDataParam.h"

@implementation PPHttpRequestDataParam

static NSString* boundary = @"0xKhTmLbOuNdArY";

@synthesize dataParams;

- (id)initForDataParams{
    if (self = [super init]) {
        dataParams = [NSMutableData data];
        return self;
    }else{
        return nil;
    }
}


- (void)appendParams:(NSString *)key forStringValue:(NSString *)value{
    //NSString *boundary = @"0xKhTmLbOuNdArY";
    
    //NSMutableData *body = [NSMutableData data];
	//[body appendData:[[NSString stringWithFormat:@"--%@\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    //[body appendData:[@"Content-Disposition: form-data; name=\"user[avatar]\"; filename=\"thefilename\"\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    //[body appendData:[@"Content-Type: application/octet-stream\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    //[body appendData:[NSData dataWithData:avatarData]];
    //[body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    //[body appendData:[@"Content-Disposition: form-data; name=\"user[nickname]\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    //[body appendData:[@"paramstringvalue1" dataUsingEncoding:NSUTF8StringEncoding]];
    //[body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    //[body appendData:[@"Content-Disposition: form-data; name=\"user[email]\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    //[body appendData:[@"paramstringvalue2" dataUsingEncoding:NSUTF8StringEncoding]];
    //[body appendData:[[NSString stringWithFormat:@"r\n--%@--\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    if ([dataParams length] == 0) {
        [dataParams appendData:[[NSString stringWithFormat:@"--%@\r\n", boundary]
            dataUsingEncoding:NSUTF8StringEncoding]];
    }else{
        [dataParams appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    }
    [dataParams appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"%@\"\r\n\r\n", key] dataUsingEncoding:NSUTF8StringEncoding]];
    [dataParams appendData:[value dataUsingEncoding:NSUTF8StringEncoding]];
}

- (void)appendParams:(NSString *)key forFilename: (NSString*) filename forDataValue:(NSData *)value{
    if ([dataParams length] == 0) {
        [dataParams appendData:[[NSString stringWithFormat:@"--%@\r\n", boundary]
                                dataUsingEncoding:NSUTF8StringEncoding]];
    }else{
        [dataParams appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    }
    [dataParams appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"%@\"; filename=\"%@\"\r\n", key, filename] dataUsingEncoding:NSUTF8StringEncoding]];
    [dataParams appendData:[@"Content-Type: application/octet-stream\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [dataParams appendData:[NSData dataWithData: value]];
}

- (NSMutableData*) toParams{
    [dataParams appendData:[[NSString stringWithFormat:@"\r\n--%@--\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    return dataParams;
}

@end
