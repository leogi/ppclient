//
//  PPViewDelegate.h
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/18.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PPViewDelegate <NSObject>

// for sessions
- (void) ppLoginCallback: (NSMutableData*) data;
- (void) ppLogoutCallback: (NSMutableData*) data;

// for users
- (void) ppUserUpdateCallback: (NSMutableData*) data;
- (void) ppUserDestroyCallback: (NSMutableData*) data;

- (void) ppConnectionErrorCallback: (NSError*) error;
@end
