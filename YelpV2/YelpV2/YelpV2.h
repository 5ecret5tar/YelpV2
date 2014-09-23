//
//  YelpV2.h
//  YelpV2
//
//  Created by Pawel Gieniec on 9/21/14.
//  Copyright (c) 2014 Pawel Gieniec. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AF2OAuth1Client/AF2OAuth1Client.h>
#import <MapKit/MapKit.h>

@interface YelpV2 : AF2OAuth1Client
+ (id) sharedInstance;
- (void)search:(NSString*)searchTerm withCLLocation:(CLLocationCoordinate2D)location withCompletionBlock:(void(^)(id response))completionBlock withErrorBlock:(void(^)(NSError * error))errorBlock;
@end