//
//  PPHttpRequestDataParam.h
//  PPClient
//
//  Created by Nghia Le Van on 13/02/20.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PPHttpRequestDataParam : NSObject

@property () NSMutableData* dataParams;

- (id) initForDataParams;

- (void) appendParams: (NSString*) key forStringValue: (NSString*) value;
- (void) appendParams: (NSString *)key forFilename: (NSString*) filename forDataValue:(NSData *)value;
- (NSMutableData*) toParams;

@end
