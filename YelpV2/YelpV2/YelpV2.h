//
//  YelpV2.h
//  YelpV2
//
//  Created by Pawel Gieniec on 9/21/14.
//  Copyright (c) 2014 Pawel Gieniec. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AF2OAuth1Client/AF2OAuth1Client.h>

@interface YelpV2 : AF2OAuth1Client
+ (id) sharedInstance;
@end