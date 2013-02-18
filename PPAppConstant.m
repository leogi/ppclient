//
//  PPAppConstant.m
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/18.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPAppConstant.h"

@implementation PPAppConstant

#ifdef DEBUG
NSString* LoginEndpoint = @"http://localhost:3000/api/v1/sessions";
NSString* LogoutEndpoint = @"http://localhost:3000/api/v1/sessions";

NSString* GET = @"GET";
NSString* POST = @"POST";
NSString* PUT = @"PUT";
NSString* DELETE = @"DELETE";

const int PPLoginCallbackType = 1;
const int PPLogoutCallbackType = 2;

#else
NSString* LoginEndpoint = @"http://localhost:3000/api/v1/sessions";
NSString* LogoutEndpoint = @"http://localhost:3000/api/v1/sessions";
#endif

@end
