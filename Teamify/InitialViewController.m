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
@synthesize SidebarVC;
- (id)initWithCoder:(NSCoder *)aDecoder
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SidebarVC = [storyboard instantiateViewControllerWithIdentifier:@"SidebarVC"];
    
    self = [super initWithCenterViewController:[storyboard instantiateViewControllerWithIdentifier:@"SignInVC"]
                            leftViewController:nil];
   
    if (self) {
        [self setLeftSize:150.0f];
      
    }
    return self;
}

-(void)goSignIn{
    
     UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    [self setCenterController:[storyboard instantiateViewControllerWithIdentifier:@"SignInVC"]];
    [self toggleLeftViewAnimated:NO];
   
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
