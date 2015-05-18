//
//  EX_ABInterstitial_ViewController.m
//  ADballoonExample
//
//  Created by Hang on 5/12/14.
//  Copyright (c) 2014 ADballoon. All rights reserved.
//

#import "EX_ABInterstitial_ViewController.h"
#import "ADballoon_ios_sdk.h"
@interface EX_ABInterstitial_ViewController ()

@end

@implementation EX_ABInterstitial_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)showBtnAction:(id)sender {
	ABInterstitialController *controller = [[ABInterstitialController alloc] initWithInventoryCode:@"test_bluerain1-MSU3QzIlN0M2NDAlN0M5NjA="];
	[controller requestADAndShow];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
