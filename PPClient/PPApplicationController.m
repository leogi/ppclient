//
//  PPApplicationController.m
//  PPClient
//
//  Created by Nghia Le Van on 13/02/19.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPApplicationController.h"

@interface PPApplicationController ()

@end

@implementation PPApplicationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) ppConnectionErrorCallback: (NSError*) error{
    NSLog(@"show message dialog at here");
}
@end
