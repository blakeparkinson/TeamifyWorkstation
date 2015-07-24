//
//  SidebarViewController.h
//  Teamify
//
//  Created by Nicholas Spitale on 7/23/15.
//  Copyright (c) 2015 Nicholas Spitale. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SidebarViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UIButton *btnTimeCard;
@property (weak, nonatomic) IBOutlet UIButton *btnSignOut;

@end
