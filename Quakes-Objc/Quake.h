//
//  Quake.h
//  Quakes-Objc
//
//  Created by Kevin Stewart on 7/27/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Quake : NSObject

// NSString, NSArray, NSDictionary mark with copy when making the properties!

- (instancetype)initWithMagnitude:(double)magnitude
                            place:(NSString *)place
                             time:(NSDate *)time
                         latitude:(double)latitude
                        longitude:(double)longitude;

// Read only makes the property immutable
@property (nonatomic, readonly) double magnitude;
@property (nonatomic, readonly, copy) NSString *place;
@property (nonatomic, readonly) NSDate *time;
@property (nonatomic, readonly) double *latitude;
@property (nonatomic, readonly) double *longitude;

@end

NS_ASSUME_NONNULL_END
