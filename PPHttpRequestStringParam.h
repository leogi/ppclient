//
//  PPHttpRequestData.h
//  PPClient
//
//  Created by Nghia Le Van on 13/02/20.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PPHttpRequestStringParam : NSObject

@property NSMutableString* stringParams;

- (id) initForStringParams;

- (void) appendParams: (NSString*) key : (NSString*) value;
- (NSMutableString*) toParams;

@end
