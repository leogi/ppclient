//
//  PPUsers.h
//  PPClient
//
//  Created by Nghia Le Van on 13/02/19.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPApplication.h"

@interface PPUsers : PPApplication

@property NSString* uid;
@property NSString* nickname;
@property (readonly) NSURL* avatarUrl;
@property NSData* avatarData;

- (void) setAvatarUrl:(NSURL *)avatarUrl;
- (void) update;
- (void) destroy;

@end


