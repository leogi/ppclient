//
//  PPHttpRequestData.m
//  PPClient
//
//  Created by Nghia Le Van on 13/02/20.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPHttpRequestStringParam.h"

@implementation PPHttpRequestStringParam

@synthesize stringParams;

- (id)initForStringParams{
    if (self = [super init]) {
        stringParams = [[NSMutableString alloc] init];
        return self;
    }else{
        return nil;
    }
}

- (void)appendParams:(NSString *)key :(NSString *)value{
    if ([stringParams length] != 0){
        [stringParams appendString: @"&"];
    }
    [stringParams appendFormat:@"%@=%@", key, value];
}

- (NSMutableString *)toParams{
    return stringParams;
}

@end
