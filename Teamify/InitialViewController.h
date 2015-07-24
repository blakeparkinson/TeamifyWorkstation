//
//  InitialViewController.h
//  Teamify
//
//  Created by Nicholas Spitale on 7/23/15.
//  Copyright (c) 2015 Nicholas Spitale. All rights reserved.
//

#import "IIViewDeckController.h"
#import "SidebarViewController.h"

@interface InitialViewController : IIViewDeckController
@property (nonatomic, retain) SidebarViewController *SidebarVC;
-(void)goSignIn;
@end
