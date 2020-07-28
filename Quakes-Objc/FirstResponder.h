//
//  FirstResponder.h
//  Quakes-Objc
//
//  Created by Kevin Stewart on 7/27/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstResponder : NSObject

@property (nonatomic, copy) NSString *name;

/*
 When writing a property it is writing these two methods under the hood
 
 Setter:
 - (void)setName:(NSString *)aName;
 
 Getter:
 - (NSString *)name;
 
 Instance variable (in the class's @interface)
 NSString *_name;
 
 */

@end

NS_ASSUME_NONNULL_END
