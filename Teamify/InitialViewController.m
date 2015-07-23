//
//  InitialViewController.m
//  Teamify
//
//  Created by Nicholas Spitale on 7/23/15.
//  Copyright (c) 2015 Nicholas Spitale. All rights reserved.
//

#import "InitialViewController.h"

@interface InitialViewController ()

@end

@implementation InitialViewController


- (id)initWithCoder:(NSCoder *)aDecoder
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self = [super initWithCenterViewController:[storyboard instantiateViewControllerWithIdentifier:@"signInVC"]
                            leftViewController:[storyboard instantiateViewControllerWithIdentifier:@"SidebarVC"]];
    if (self) {
        // Add any extra init code here
    }
    return self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
