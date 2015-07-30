//
//  ModalViewController.h
//  Simple 3
//
//  Created by Develop on 30.07.15.
//  Copyright (c) 2015 Develop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"

@protocol EditTable <NSObject>

-(void)setList:(Item *)data;

@end


@interface ModalViewController : UIViewController

@property (nonatomic,weak)id<EditTable> delegate;

@property (nonatomic,weak) IBOutlet UITextField *textField;

-(IBAction)onCancelCliclk:(id)sender;
-(IBAction)onOkClick:(id)sender;

@end
