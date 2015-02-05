//
//  DetailContainer.h
//  Corvette-Prototype
//
//  Created by Jon Kotowski on 10/25/14.
//  Copyright (c) 2014 Jon Kotowski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface DetailContainer : NSObject


@property (weak, nonatomic) NSString * title;
@property (weak, nonatomic) UIImage * image;
@property (weak, nonatomic) NSString * years;
@property (weak, nonatomic) NSString * itemNum;
@property (weak, nonatomic) NSString * price;

@end