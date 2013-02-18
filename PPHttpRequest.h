//
//  PPHttpRequest.h
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/16.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PPRequestDelegate.h"
#import "PPAppConstant.h"

@interface PPHttpRequest : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>

@property id delegate;
@property NSMutableData* receivedData;
@property NSArray* cookie;
@property NSString* endpoint;
@property NSString* requestMethod;
@property NSMutableString* requestData;

- (id) initWithDelegate: (id) dlg forEndPoint: (NSString*) url forMethod: (NSString*) method forRequestData: (NSMutableString*) data ;
- (void) handleReceivedData: (NSMutableData*) data;
- (void) connect;

@end
