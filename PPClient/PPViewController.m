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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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

- (void)ppLoginCallback:(NSMutableData *)data{
    NSLog(@"%@", @"pp login callback success");
}

- (void)ppLogoutCallback:(NSMutableData *)data{
    NSLog(@"pp logout callback success");
}

@end
