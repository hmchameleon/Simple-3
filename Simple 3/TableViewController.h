//
//  TableViewController.h
//  Simple 3
//
//  Created by Develop on 30.07.15.
//  Copyright (c) 2015 Develop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "ModalViewController.h"

@interface TableViewController : UITableViewController <EditTable>
{
    NSMutableArray *_listData;
}
- (IBAction)onClick:(id)sender;

@end
