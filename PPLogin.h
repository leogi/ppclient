//
//  PPLogin.h
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/16.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PPHttpRequest.h"
#import "PPApplication.h"

@interface PPLogin : PPApplication

- (void) login: (NSString*) email : (NSString*) password;
- (void) logout;

@end


