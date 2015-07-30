//
//  ModalViewController.m
//  Simple 3
//
//  Created by Develop on 30.07.15.
//  Copyright (c) 2015 Develop. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

@synthesize delegate;
@synthesize textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onOkClick:(id)sender
{
    Item *data = [[Item alloc] initWithTitle:[textField text] andInfo:@""];
    [self.delegate setList:data];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)onCancelCliclk:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
