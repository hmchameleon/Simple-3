//
//  Item.m
//  Simple 3
//
//  Created by Develop on 30.07.15.
//  Copyright (c) 2015 Develop. All rights reserved.
//

#import "Item.h"

@implementation Item

@synthesize title = _title;
@synthesize info = _info;

- (id)initWithTitle:(NSString *)title andInfo:(NSString *)info
{
    if (self=[super init])
    {
        _title = title;
        _info = info;
    }
    return self;
}

@end
