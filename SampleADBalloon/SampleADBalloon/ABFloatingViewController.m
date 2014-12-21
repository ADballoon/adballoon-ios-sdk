//
//  ABFloatingViewController.m
//  SampleADBalloon
//
//  Copyright (c) 2014 ADBalloon. All rights reserved.
//

#import "ABFloatingViewController.h"
#import "ABFloatingView.h"
@interface ABFloatingViewController ()
@property (strong) ABFloatingView *abFloatingView;
@end

@implementation ABFloatingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ABFloatingView *bannerView = [[ABFloatingView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    bannerView.isShowCloseButtton = NO;
    bannerView.inventoryCode = @"";
    self.abFloatingView = bannerView;
    [self.view addSubview:bannerView];
    

    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.abFloatingView requestAD];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
