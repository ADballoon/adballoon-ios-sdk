//
//  ABInterstitialViewController.m
//  SampleADBalloon
//
//  Copyright (c) 2014 ADBalloon. All rights reserved.
//

#import "ABInterstitialViewController.h"
#import "ABInterstitialController.h"
@interface ABInterstitialViewController ()

@end

@implementation ABInterstitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)adStart:(id)sender {
    ABInterstitialController *controller = [[ABInterstitialController alloc] initWithInventoryCode:@""];
    [controller requestADAndShow];
    
}


@end
