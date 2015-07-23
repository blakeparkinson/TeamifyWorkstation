//
//  UILabel+TmfLabel.h
//  Teamify
//
//  Created by Nicholas Spitale on 2/15/15.
//  Copyright (c) 2015 Nicholas Spitale. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {
    tmfHeaderOne,
    tmfHeaderTwo,
    tmfButton
} LabelStyle;

@interface UILabel (TMFLabel)
-(UILabel *) tmfSetStyle:(LabelStyle)style;
@end
