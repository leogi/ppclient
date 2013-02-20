//
//  PPAppConstant.m
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/18.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPAppConstant.h"

@implementation PPAppConstant

//for sessions controller
NSString* LoginEndpoint = @"api/v1/sessions";
NSString* LogoutEndpoint = @"api/v1/sessions/0";

const int PPLoginCallbackType = 1;
const int PPLogoutCallbackType = 2;

//for users controller
NSString* UsersShowEndPoint = @"api/v1/users/";// +id
NSString* UsersCreateEndPoint = @"api/v1/users/";
NSString* UsersUpdateEndPoint = @"api/v1/users/";// +id
NSString* UsersDestroyEndPoint = @"api/v1/users/";// +id

const int PPUsersShowCallbackType = 3;
const int PPUsersCreateCallbackType = 4;
const int PPUsersUpdateCallbackType = 5;
const int PPUsersDestroyCallbackType = 6;

// method
NSString* GET = @"GET";
NSString* POST = @"POST";
NSString* PUT = @"PUT";
NSString* DELETE = @"DELETE";

#ifdef DEBUG
NSString* Hostname = @"http://192.168.1.38:3000/";
#else
NSString* LoginEndpoint = @"http://192.168.1.38:3000/api/v1/sessions";
NSString* LogoutEndpoint = @"http://192.168.1.38:3000/api/v1/sessions";
#endif

@end
