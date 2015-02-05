//
//  details.h
//  Corvette-Prototype
//
//  Created by Jon Kotowski on 10/27/14.
//  Copyright (c) 2014 Jon Kotowski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface details : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *ScrollView;

@property (strong, nonatomic) IBOutlet UILabel *ItemNumberOutlet;
@property (strong, nonatomic) IBOutlet UILabel *TitleOutlet;
@property (strong, nonatomic) IBOutlet UIImageView *ImageOutlet;
@property (strong, nonatomic) IBOutlet UILabel *yearsOutlet;
@property (strong, nonatomic) IBOutlet UILabel *DescriptionOutlet;

@end
