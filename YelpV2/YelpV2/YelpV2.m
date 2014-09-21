//
//  YelpV2.m
//  YelpV2
//
//  Created by Pawel Gieniec on 9/21/14.
//  Copyright (c) 2014 Pawel Gieniec. All rights reserved.
//

#import "YelpV2.h"

@implementation YelpV2

+ (instancetype)sharedInstance
{
    static dispatch_once_t once;
    static YelpV2 *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[[self class] alloc] init];
    });
    return sharedInstance;
}

- (void)setupYelpV2WithConsumerKey:(NSString*)consumerKey withConsumerSecret:(NSString*)consumerSecret withToken:(NSString*)token withTokenSecret:(NSString*)tokenSecret
{
    
}
@end