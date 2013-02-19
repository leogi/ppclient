//
//  PPViewController.h
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/16.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPLogin.h"
#import "PPApplicationController.h"
#import "PPUsers.h"

@interface PPViewController : PPApplicationController//<PPViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *emailTextfield;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextfield;
- (IBAction)button:(id)sender;
- (IBAction)logout:(id)sender;
- (IBAction)update:(id)sender;

@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *password;
@end
