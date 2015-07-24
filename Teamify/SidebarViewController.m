//
//  SidebarViewController.m
//  Teamify
//
//  Created by Nicholas Spitale on 7/23/15.
//  Copyright (c) 2015 Nicholas Spitale. All rights reserved.
//

#import "SidebarViewController.h"
#import "LocalDatastore.h"
#import <ViewDeck/IIViewDeckController.h>
#import "InitialViewController.h"

@interface SidebarViewController ()

@end

@implementation SidebarViewController
@synthesize lblName;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    LocalDatastore *store = [LocalDatastore store];
    NSString *name = [NSString stringWithFormat:@"%@ %@",
                      [store.currentUser objectForKey:@"first_name"],[store.currentUser objectForKey:@"last_name"]];
    [lblName setText:name];
 
}


- (IBAction)doSignOut:(id)sender {
    InitialViewController *vc = (InitialViewController *)self.viewDeckController;
    [vc goSignIn];
}

- (IBAction)doTimeCard:(id)sender {
    [self.viewDeckController toggleLeftView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
