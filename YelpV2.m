//
//  YelpV2.m
//  YelpV2
//
//  Created by Pawel Gieniec on 9/21/14.
//  Copyright (c) 2014 Pawel Gieniec. All rights reserved.
//

#import "YelpV2.h"

@implementation YelpV2

static NSString *kYelpURLString = @"http://api.yelp.com/v2";

+ (instancetype)sharedInstance
{
    static dispatch_once_t once;
    static YelpV2 *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[[self class] alloc] init];
    });
    return sharedInstance;
}

-(id)init
{
    NSString * consumerKey = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"YELPConsumerKey"];
    NSString * consumerSecret = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"YELPConsumerSecret"];
    NSString * token = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"YELPToken"];
    NSString * tokenSecret = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"YELPTokenSecret"];

    NSURL * url = [[NSURL alloc] initWithString:kYelpURLString];
    
    if([super initWithBaseURL:url key:consumerKey secret:consumerSecret]) {
        self.accessToken = [[AF2OAuth1Token alloc] initWithKey:token secret:tokenSecret session:nil expiration:[NSDate distantFuture] renewable:NO];
        self.requestSerializer = [AFJSONRequestSerializer serializer];
    }
    return self;
}

- (void)search:(NSString*)searchTerm withCLLocation:(CLLocationCoordinate2D)location withCompletionBlock:(void(^)(id response))completionBlock withErrorBlock:(void(^)(NSError * error))errorBlock
{
    NSString * ll = [NSString stringWithFormat:@"%f,%f", location.latitude, location.longitude];
    NSDictionary * parameters = @{@"term" : searchTerm, @"ll" : ll};
    
    [self makeServerRequestWithMethod:@"GET" withPath:@"/v2/search" withParameters:parameters withCompletionBlock:^(id response) {
        completionBlock(response);
    } withErrorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}

- (void)makeServerRequestWithMethod:(NSString*)method withPath:(NSString*)path withParameters:(NSDictionary*)parameters withCompletionBlock:(void(^)(id response))completionBlock withErrorBlock:(void(^)(NSError * error))errorBlock
{
    NSMutableURLRequest * request = [self requestWithMethod:method path:path parameters:parameters];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    AFHTTPRequestOperation * operation = [[AFHTTPRequestOperationManager manager] HTTPRequestOperationWithRequest:request success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completionBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        errorBlock(error);
    }];
    
    [manager.operationQueue addOperation:operation];
}

@end
