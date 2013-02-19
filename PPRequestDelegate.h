//
//  PPRequestDelegate.h
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/18.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PPRequestDelegate <NSObject>

- (void) requestCallback: (NSMutableData*) receivedData;
- (void) errorCallback: (NSError*) error;

@end
