//
//  PPApplication.h
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/18.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PPHttpRequest.h"
#import "PPViewDelegate.h"
#import "PPRequestDelegate.h"
#import "PPAppConstant.h"

@interface PPApplication : NSObject <PPRequestDelegate>

@property int typeCallback;
@property id delegate;

- (id) initWithDelegate: (id) dlg forTypeCallback: (int) type;

@end
