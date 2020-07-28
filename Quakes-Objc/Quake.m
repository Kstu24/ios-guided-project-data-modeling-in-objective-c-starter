//
//  Quake.m
//  Quakes-Objc
//
//  Created by Kevin Stewart on 7/27/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "Quake.h"

@implementation Quake

- (instancetype)init
{
    return [self initWithMagnitude:0
                             place:@""
                              time:NSDate.now
                          latitude:0
                         longitude:0
                              type:@""
                             alert:nil];
}

- (instancetype)initWithMagnitude:(double)magnitude
                            place:(NSString *)place
                             time:(NSDate *)time
                         latitude:(double)latitude
                        longitude:(double)longitude
                             type:(NSString *)type
                            alert:(nullable NSString *)alert
{
    if (self = [super init]) {
        _magnitude = magnitude;
        _place = place.copy;
        _time = time;
        _latitude = latitude;
        _longitude = longitude;
        _type = type;
        _alert = alert;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSDictionary *properties = [dictionary objectForKey:@"properties"];
    if (![properties isKindOfClass:NSDictionary.class]) return nil;
    
    NSNumber *magnitudeNumber = [properties objectForKey:@"mag"];
    if (![magnitudeNumber isKindOfClass:NSNumber.class]) return nil;
    
    return [self initWithMagnitude:magnitudeNumber.doubleValue
                             place:@""
                              time:NSDate.now
                          latitude:0
                         longitude:0
                              type:@""
                             alert:nil];
}

@end
