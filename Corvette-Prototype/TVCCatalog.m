//
//  TVCCatalog.m
//  EC Storyboard
//
//  Created by Marc on 10/18/14.
//  Copyright (c) 2014 Marc. All rights reserved.
//

#import "TVCCatalog.h"

@interface TVCCatalog ()

@end

@implementation TVCCatalog
@synthesize catagories;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"grey_noise.jpg"]];
    [[UIBarButtonItem appearance] setTintColor:[UIColor redColor]];
    self.navigationController.navigationBar.topItem.title = @"";
    
    catagories = [[NSMutableArray alloc] initWithObjects:@"ACCCESSORIES",@"BRAKES",@"CLEARANCE PARTS",@"CLOTHING AND RELATED",@"EXTERIOR-DRIVETRAIN",@"FEATURED NEW PARTS",@"FIBERGLASS",@"INTERIOR",@"LITERATURE AND VIDEO",@"NEW OLD STOCK - NOS",@"SUSPENSIONS AND CHASSIS",@"WEATHERSTRIPPING",@"WIRING AND ELECTRICAL", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"PushMenu" sender:self];
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return catagories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CatalogCell" forIndexPath:indexPath];
    UILabel *catLabel = (UILabel *)[cell viewWithTag:100];
    

    UIImageView *av = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 277, 58)];
    av.backgroundColor = [UIColor clearColor];
    av.opaque = NO;
    av.image = [UIImage imageNamed:@"grey_noise.jpg"];
    cell.backgroundView = av;
    
    
    catLabel.text = [catagories objectAtIndex:indexPath.row];
    //catLabel.textColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"red_noise.jpg"]];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //if ([segue.identifier isEqualToString:@"showWineryPage"]) {
      //  NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
       // WineryPageViewController *destViewController = segue.destinationViewController;
        //destViewController.wineryIndex = indexPath.row;
    //}
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
