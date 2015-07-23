//
//  UILabel+TmfLabel.m
//  Teamify
//
//  Created by Nicholas Spitale on 2/15/15.
//  Copyright (c) 2015 Nicholas Spitale. All rights reserved.
//

#import "UILabel+TMFLabel.h"
#import "Constants.h"

@implementation UILabel (TMFLabel)

-(UILabel *) tmfSetStyle:(LabelStyle)style{


    switch (style) {
        case tmfHeaderOne:
            [self setFont:[UIFont systemFontOfSize:17.0f]];
            [self setBackgroundColor:[UIColor clearColor]];
            break;
        case tmfHeaderTwo:
            [self setFont:[UIFont boldSystemFontOfSize:14.0f]];
             [self setBackgroundColor:[UIColor clearColor]];
            [self setAlpha:0.3f];
            break;
        case tmfButton:
            [self setTextColor:[UIColor whiteColor]];
            [self setFont:[UIFont boldSystemFontOfSize:14.0f]];
             [self setBackgroundColor:[UIColor clearColor]];
            break;
            
        default:
            NSLog(@"Style Not Found");
            break;
    }

    return self;
}


@end
