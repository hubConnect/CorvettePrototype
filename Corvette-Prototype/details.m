//
//  details.m
//  Corvette-Prototype
//
//  Created by Jon Kotowski on 10/27/14.
//  Copyright (c) 2014 Jon Kotowski. All rights reserved.
//

#import "AppDelegate.h"
#import "details.h"

@interface details ()

@end

@implementation details

bool firstLoad = true;

- (void)viewDidLoad {
    
    self.ScrollView.layer.cornerRadius = 5;
    self.ScrollView.layer.masksToBounds = YES;
    
    self.ScrollView.layer.shadowOffset = CGSizeMake(-15, 20);
    self.ScrollView.layer.shadowRadius = 5;
    self.ScrollView.layer.shadowOpacity = 0.5;
    self.ScrollView.layer.shadowColor = [UIColor whiteColor].CGColor;
    [super viewDidLoad];
    if(firstLoad) {
        
        [UIView animateWithDuration:3 animations:^{
            self.view.alpha = 0.0f;
            self.view.alpha = 1.0f;
        }];
    }
    // Do any additional setup after loading the view from its nib.
    
}

- (void) viewWillAppear:(BOOL)animated {
    AppDelegate * appD = [UIApplication sharedApplication].delegate;
    [UIView animateWithDuration:1 animations:^{
        
        if(firstLoad) {
            
            self.ItemNumberOutlet.alpha = 1.0f;
            firstLoad = false;
        }
        
        self.TitleOutlet.alpha = 0.0f;
        self.yearsOutlet.alpha = 0.0f;
        self.ImageOutlet.alpha = 0.0f;
        
        if(appD.detailTodisplay) {
            self.ItemNumberOutlet.text = appD.detailTodisplay.itemNum;
            self.yearsOutlet.text = appD.detailTodisplay.years;
            self.TitleOutlet.text = appD.detailTodisplay.title;
            self.ImageOutlet.image = appD.detailTodisplay.image;
        }
        
        self.ItemNumberOutlet.alpha = 1.0f;
        self.yearsOutlet.alpha = 1.0f;
        self.TitleOutlet.alpha = 1.0f;
        self.ImageOutlet.alpha = 1.0f;
        
        
        [UIView commitAnimations];

    }];
    }
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
