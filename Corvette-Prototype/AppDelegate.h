//
//  AppDelegate.h
//  Corvette-Prototype
//
//  Created by Jon Kotowski on 10/22/14.
//  Copyright (c) 2014 Jon Kotowski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "DetailContainer.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UISplitViewController *uisvc;
@property (strong, nonatomic) DetailContainer * detailTodisplay;

-(void) dismissSideMenu;
@end
