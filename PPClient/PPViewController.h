//
//  PPViewController.h
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/16.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPLogin.h"

@interface PPViewController : UIViewController <PPViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *emailTextfield;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextfield;
- (IBAction)button:(id)sender;
- (IBAction)logout:(id)sender;

@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *password;
@end
