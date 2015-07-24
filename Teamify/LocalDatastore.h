//
//  LocalDatastore.h
//  Teamify
//
//  Created by Nicholas Spitale on 7/24/15.
//  Copyright (c) 2015 Nicholas Spitale. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocalDatastore : NSObject{
    NSMutableDictionary *currentUser;
}
@property (nonatomic, retain) NSMutableDictionary *currentUser;

+ (id)store;
@end
