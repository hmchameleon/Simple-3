//
//  TableViewController.m
//  Simple 3
//
//  Created by Develop on 30.07.15.
//  Copyright (c) 2015 Develop. All rights reserved.
//

#import "TableViewController.h"
#import "MyViewCell.h"
#import "Item.h"

@interface TableViewController ()

@end

@implementation TableViewController

NSMutableArray *_item;
int _index;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _item= [[NSMutableArray alloc] init];
    int i;
    for(i=0;i<5;i++)
    {
        NSString *sTitleString = [NSString stringWithFormat:@"Title №%d",i];
        NSString *sInfoString = [NSString stringWithFormat:@"Info №%d",i];
        Item *thing = [[Item alloc] initWithTitle:sTitleString andInfo:sInfoString];
        [_item addObject:thing];

    }
    //_listData = [[NSMutableArray alloc] initWithObjects:@"1",@"2", nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [_item count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyViewCell *cell = (MyViewCell *)[tableView dequeueReusableCellWithIdentifier:@"simpleCell"];
    
    //Item *item = []
    //cell.textLabel.text = [_listData objectAtIndex:indexPath.row]; item.title;
    // Configure the cell...
    [cell setItem:_item[indexPath.row]];
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    _index = indexPath.row;
    [self performSegueWithIdentifier:@"segue" sender:self];
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - TBVModal

- (IBAction)onClick:(id)sender
{
    [self performSegueWithIdentifier:@"modalSegue" sender:self];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier  isEqual: @"segue"])
    {
        ViewController *vc = (ViewController * ) segue.destinationViewController;
        [vc sendData:[_item[_index] title]];
    }
    else if ([segue.identifier isEqualToString:@"modalSegue"])
    {
        ModalViewController *vc = (ModalViewController  *) segue.destinationViewController;
        vc.delegate = self;
    }
}

#pragma mark - release protocol

-(void) setList:(Item *)data
{
    [_item addObject:data];
}

@end
