//
//  PPViewDelegate.h
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/18.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PPViewDelegate <NSObject>

- (void) ppLoginCallback: (NSMutableData*) data;
- (void) ppLogoutCallback: (NSMutableData*) data;

@end
