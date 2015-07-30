//
//  MyViewCell.m
//  Simple 3
//
//  Created by Develop on 30.07.15.
//  Copyright (c) 2015 Develop. All rights reserved.
//

#import "MyViewCell.h"

@implementation MyViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setItem:(Item *)data
{
    self.label1.text = data.title;
    self.label2.text = data.info;
}

@end
