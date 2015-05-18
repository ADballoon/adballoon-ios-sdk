//
//  EX_ABBannerViewController.m
//  ADballoonExample
//
//  Created by Hang on 5/12/14.
//  Copyright (c) 2014 ADballoon. All rights reserved.
//

#import "EX_ABBannerViewController.h"
#import "ADballoon_ios_sdk.h"

@interface EX_ABBannerViewController ()
@property (weak, nonatomic) IBOutlet ABBannerView *bannerView;
@end

@implementation EX_ABBannerViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.bannerView.inventoryCode = @"test1_bluerain1-MSU3QzElN0M2NDAlN0MxMDA=";  //
}
-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	[self.bannerView requestAD];
}
-(void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
	[self.bannerView stopRequestAD];
}
- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

@end
