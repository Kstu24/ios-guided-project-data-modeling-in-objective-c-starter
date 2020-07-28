//
//  FirstResponder.m
//  Quakes-Objc
//
//  Created by Kevin Stewart on 7/27/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "FirstResponder.h"

@implementation FirstResponder

// myFirstResponder.name = @"Dimitri";
// [.myFirstResponder setName:@"Dimitri"];

// NSString *name = myFirstResponder.name;
// NSString *name = [myFirstResponder name];

- (void)setName:(NSString *)aName
{
    // willSet
    _name = aName.copy;
    
    // didSet
}

@end
