//
//  LocalDatastore.m
//  Teamify
//
//  Created by Nicholas Spitale on 7/24/15.
//  Copyright (c) 2015 Nicholas Spitale. All rights reserved.
//

#import "LocalDatastore.h"

@implementation LocalDatastore

@synthesize currentUser;

#pragma mark Singleton Methods

+ (id)store {
    static LocalDatastore *store = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        store = [[self alloc] init];
    });
    return store;
}

- (id)init {
    if (self = [super init]) {
        currentUser = [[NSMutableDictionary alloc] init];
    }
    return self;
}


@end
