//
//  PPApplication.m
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/18.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPApplication.h"

@implementation PPApplication

@synthesize delegate;
@synthesize typeCallback;

- (id) initWithDelegate: (id) dlg forTypeCallback: (int) type{
    if (self = [super init]){
        [self setDelegate:dlg];
        [self setTypeCallback:type];
        return self;
    }else{
        return nil;
    }
}

- (void)requestCallback:(NSMutableData *)receivedData{
    if (typeCallback == PPLoginCallbackType) {
        [delegate ppLoginCallback:receivedData];
    }else if (typeCallback == PPLogoutCallbackType){
        [delegate ppLogoutCallback:receivedData];
    }else {
        //NSLog(@"dech chay");
    }
}

@end
