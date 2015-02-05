//
//  TVCAccessories.m
//  EC Storyboard
//
//  Created by Marc on 10/20/14.
//  Copyright (c) 2014 Marc. All rights reserved.
//

#import "TVCAccessories.h"

@interface TVCAccessories ()

@end

@implementation TVCAccessories

@synthesize accessories;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"grey_noise.jpg"]];
    self.navigationController.navigationBar.topItem.title = @"";
    [[UIBarButtonItem appearance] setTintColor:[UIColor redColor]];
    

    
    accessories = [[NSMutableArray alloc] initWithObjects:@"BLACK OUT KITS",@"BUBBLE TAIL LENSES",@"CALENDERS",@"CAR COVERS",@"CARBON FIBER DASH KITS",@"CARPET PROTECTION",@"COLD AIR PACKAGES",@"COMPUTER CHIPS & PROGRAMS",@"COMPUTER RELATED",@"CONSOLE",@"CONVERTIBLE INTERIOR COVERS",@"CUP HOLDERS",@"CUSTOM INTERIOR ITEMS",@"DASH",@"DECKLID PROTECTORS",@"EMBLEMS- GOLD & SILVER",@"ENGINE COMPARTMENT",@"EXHAUST ENHANCEMENTS",@"EXTERIOR DUSTER FOR PAINT",@"EXTERIOR TOUCH UP PAINT",@"FENDER COVERS",@"FOOTWEAR",@"FURNITURE",@"GARAGE",@"JEWELRY PINS",@"KLEEN WHEELS",@"KNOCKOFF SPINNERS KITS",@"LETTERING KITS",@"LICENSE PLATES, FRAMES & COVERS",@"LIGHTING SYSTEMS",@"LUGGAGE SHADE CLIPS",@"MUGS",@"NOSE MASKS",@"RACE RAMP",@"RAINCOATS- T-TOP/ROOF PANEL",@"REAR WINDOW HATCH VENT",@"ROADSTER BARS",@"ROCKER PANELS",@"ROCKERS BARS",@"ROOF PANELS & RELATED",@"SEAT PROTECTORS",@"SHIFTER",@"SIDE FENDER ACCENTS",@"SILL PROTECTORS",@"SOFT TOP ACCESSORIES",@"SPLASH GUARD SETS",@"SPOILERS-FRONT",@"STEERING WHEELS",@"STEREOS & SPEAKERS",@"SUN SHADES",@"TAILLIGHT LOUVERS",@"TOP BAGS",@"TPI FAST PACK & COMPONENTS",@"TRUNK LINERS",@"UPPER BRAKE LIGHT KITS",@"WHEELS-CUSTOM",@"WIND DEFLECTORS",@"WIPER COMPARTMENT COVERS", nil];

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"PushMenuToItems" sender:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    return self.accessories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AccessoryCell" forIndexPath:indexPath];
    UILabel *accessLabel = (UILabel *)[cell viewWithTag:200];
    
    UIImageView *av = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 277, 58)];
    av.backgroundColor = [UIColor clearColor];
    av.opaque = NO;
    av.image = [UIImage imageNamed:@"grey_noise.jpg"];
    cell.backgroundView = av;
    
    accessLabel.text = [accessories objectAtIndex:indexPath.row];
    //accessLabel.textColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"red_noise.jpg"]];
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
