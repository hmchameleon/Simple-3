//
//  Item.h
//  Simple 3
//
//  Created by Develop on 30.07.15.
//  Copyright (c) 2015 Develop. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *info;

- (id)initWithTitle:(NSString *)title andInfo:(NSString *)info;

@end
