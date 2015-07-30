//
//  MyViewCell.h
//  Simple 3
//
//  Created by Develop on 30.07.15.
//  Copyright (c) 2015 Develop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"
@interface MyViewCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UILabel *label1;
@property (nonatomic,weak) IBOutlet UILabel *label2;

-(void) setItem:(Item *)data;

@end
