//
//  TVCBok.m
//  EC Storyboard
//
//  Created by Marc on 10/20/14.
//  Copyright (c) 2014 Marc. All rights reserved.
//

#import "TVCBok.h"
#import "AppDelegate.h"
#import "DetailViewController.h"
#import "details.h"
#import "ViewController.h"
#import "DetailContainer.h"

@interface TVCBok ()

@end

@implementation TVCBok
@synthesize bok;

UIViewController *cell;
details * detailStuff;
details * detailNew ;

-(void)willTransitionToTraitCollection:(UITraitCollection *)newCollection
             withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog(@"Trait collection = %@", newCollection);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"grey_noise.jpg"]];
    [[UIBarButtonItem appearance] setTintColor:[UIColor redColor]];
    
    NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:@"boklist" ofType:@"plist"];
    bok = [[NSArray alloc] initWithContentsOfFile:plistCatPath];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    AppDelegate * appd = [UIApplication sharedApplication].delegate;
    detailNew = [[details alloc] initWithNibName:@"details" bundle:nil];
    
    
    NSDictionary *tempDict = [[NSDictionary alloc] initWithDictionary:[self.bok objectAtIndex:indexPath.row]];
    DetailContainer * cont = [[DetailContainer alloc] init];
    
    cont.title = [tempDict objectForKey:@"title"];
    cont.years = [tempDict objectForKey:@"years"];
    cont.itemNum = [tempDict objectForKey:@"item num"];
    cont.image = [UIImage imageNamed:[tempDict objectForKey:@"image"]];
    appd.detailTodisplay = cont;
    
    NSLog(@"sdafsdflkasjdf%@",detailNew);
    [appd.uisvc showDetailViewController:detailNew sender:self];
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
    return self.bok.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"bokCell" forIndexPath:indexPath];
    
    NSDictionary *tempDict = [[NSDictionary alloc] initWithDictionary:[self.bok objectAtIndex:indexPath.row]];
    
    UILabel *titleLabel = (UILabel *)[cell viewWithTag:300];
    UILabel *yearsLabel = (UILabel *)[cell viewWithTag:320];
    UILabel *itemNumLabel = (UILabel *)[cell viewWithTag:321];
    UILabel *priceLabel = (UILabel *)[cell viewWithTag:322];
    UIImageView *iconImage = (UIImageView *)[cell viewWithTag:310];
    
    titleLabel.text = [tempDict objectForKey:@"title"];
    yearsLabel.text = [tempDict objectForKey:@"years"];
    itemNumLabel.text = [tempDict objectForKey:@"item num"];
    priceLabel.text = [tempDict objectForKey:@"price"];
    iconImage.image = [UIImage imageNamed:[tempDict objectForKey:@"image"]];
    
    return cell;
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
