//
//  PPViewController.m
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/16.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPViewController.h"

@interface PPViewController ()

@end

@implementation PPViewController

@synthesize emailTextfield = _emailTextfield;
@synthesize passwordTextfield = _passwordTextfield;
@synthesize email = _email;
@synthesize password = _password;

- (IBAction)button:(id)sender {
    _email = _emailTextfield.text;
    _password = _passwordTextfield.text;
    
    PPLogin* pplogin = [[PPLogin alloc] initWithDelegate:self forTypeCallback: PPLoginCallbackType];
    [pplogin login: _email : _password];
}

- (IBAction)logout:(id)sender {
    PPLogin* pplogin = [[PPLogin alloc] initWithDelegate:self forTypeCallback: PPLoginCallbackType];
    [pplogin logout];
}

- (IBAction)update:(id)sender {
    PPUsers* users = [[PPUsers alloc] initWithDelegate:self forTypeCallback: PPUsersUpdateCallbackType];
    NSURL* remoteUrl = [NSURL URLWithString:@"http://images.fanpop.com/images/image_uploads/tobi-aka--obito-naruto-shippuuden-452641_800_1132.jpg"];
    [users setAvatarUrl:remoteUrl];
    [users setUid:@"1"];
    [users update];
}

- (void)ppLoginCallback:(NSMutableData *)data{
    NSLog(@"%@", @"pp login callback success");
}

- (void)ppLogoutCallback:(NSMutableData *)data{
    NSLog(@"pp logout callback success");
}

- (void) ppUserUpdateCallback: (NSMutableData*) data{
    NSLog(@"pp user update callback success");
}
@end
