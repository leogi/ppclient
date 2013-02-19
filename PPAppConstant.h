//
//  PPAppConstant.h
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/18.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PPAppConstant : NSObject

extern NSString* Hostname;
//for sessions controller
extern NSString* LoginEndpoint;
extern NSString* LogoutEndpoint;

extern const int PPLoginCallbackType;
extern const int PPLogoutCallbackType;

//for users controller
extern NSString* UsersShowEndPoint;
extern NSString* UsersCreateEndPoint;
extern NSString* UsersUpdateEndPoint;
extern NSString* UsersDestroyEndPoint;

extern const int PPUsersShowCallbackType;
extern const int PPUsersCreateCallbackType;
extern const int PPUsersUpdateCallbackType;
extern const int PPUsersDestroyCallbackType;

extern NSString* GET;
extern NSString* POST;
extern NSString* PUT;
extern NSString* DELETE;



@end
