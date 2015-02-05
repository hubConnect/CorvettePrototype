//
//  DetailViewController.h
//  Corvette-Prototype
//
//  Created by Jon Kotowski on 10/25/14.
//  Copyright (c) 2014 Jon Kotowski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *ItemNumerOutlet;
@property (strong, nonatomic) IBOutlet UILabel *YearOutlet;
@property (strong, nonatomic) IBOutlet UILabel *NameOutlet;
@property (strong, nonatomic) IBOutlet UIImageView *PictureOutlet;
@property (strong, nonatomic) IBOutlet UILabel *PriceOutlet;
@property (strong, nonatomic) IBOutlet UILabel *DescriptionOutlet;

@end
