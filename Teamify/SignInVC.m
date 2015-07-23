//
//  SignInVC.m
//  Teamify
//
//  Created by Nicholas Spitale on 7/23/15.
//  Copyright (c) 2015 Nicholas Spitale. All rights reserved.
//

#import "SignInVC.h"
#import <QuartzCore/QuartzCore.h>
#import <ViewDeck/IIViewDeckController.h>
@interface SignInVC ()

@end

@implementation SignInVC

- (void)viewDidLoad {
  
    [super viewDidLoad];
   
    self.btnClockOut.layer.cornerRadius = 5;
    self.btnClockOut.clipsToBounds = YES;
    
    self.btnClockIn.layer.cornerRadius = 5;
    self.btnClockIn.clipsToBounds = YES;
    
    [self.btnSignIn.layer setBorderColor:[UIColor whiteColor].CGColor];
    [self.btnSignIn.layer setBorderWidth:2.0f];
    self.btnSignIn.layer.cornerRadius = 5;
    self.btnSignIn.clipsToBounds = YES;
    // Do any additional setup after loading the view.
}

- (IBAction)doSignIn:(id)sender {
   
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sign In"
                                                    message:@"Enter Passcode"
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"Sign In", nil];
    alert.alertViewStyle=UIAlertViewStyleSecureTextInput;
    
    [[alert textFieldAtIndex:0] setKeyboardType:UIKeyboardTypeNumberPad];
    [alert show];
    return;
}

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 0)
        return;
    NSManagedObjectContext *context = [self managedObjectContext];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Employees"];
    
    int passcode = [[[alertView textFieldAtIndex:0] text] intValue];
    
    NSPredicate *predicateID = [NSPredicate predicateWithFormat:[NSString stringWithFormat:@"passcode == %i",passcode]];
    
    [fetchRequest setPredicate:predicateID];
    NSArray *employees = [context executeFetchRequest:fetchRequest error:nil];
    if([employees count] > 0){
        
         UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        [self.viewDeckController setCenterController:[storyboard instantiateViewControllerWithIdentifier:@"CenterVC"]];
        [self.viewDeckController toggleLeftView];
    }
    else{
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Passcode Not Found"
                                                        message:@"Try Again"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        alert.alertViewStyle=UIAlertViewStyleDefault;
        [alert show];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
