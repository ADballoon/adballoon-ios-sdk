//
//  ABBannerViewController.m
//  SampleADBalloon
//
//  Copyright (c) 2014 ADBalloon. All rights reserved.
//

#import "ABBannerViewController.h"
#import "ABBannerView.h"
@interface ABBannerViewController ()
@property (strong) ABBannerView *abBannerView;
@end

@implementation ABBannerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ABBannerView *bannerView = [[ABBannerView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    bannerView.inventoryCode = @"";
    self.abBannerView = bannerView;
    [self.view addSubview:bannerView];

}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.abBannerView requestAD];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
//    [self.abBannerView ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
