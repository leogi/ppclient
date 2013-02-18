//
//  PPAppConstant.h
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/18.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PPAppConstant : NSObject

extern NSString* LoginEndpoint;
extern NSString* LogoutEndpoint;
extern NSString* GET;
extern NSString* POST;
extern NSString* PUT;
extern NSString* DELETE;

extern const int PPLoginCallbackType;
extern const int PPLogoutCallbackType;

@end
