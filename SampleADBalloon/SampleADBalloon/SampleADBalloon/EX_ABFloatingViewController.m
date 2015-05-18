//
//  EX_ABFloatingViewController.m
//  ADballoonExample
//
//  Created by Hang on 5/12/14.
//  Copyright (c) 2014 ADballoon. All rights reserved.
//

#import "EX_ABFloatingViewController.h"
#import "ADballoon_ios_sdk.h"
#define FLOATINGVIEW_OFFSET_Y 300
@interface EX_ABFloatingViewController ()
@property (strong)ABFloatingView * floatingView;
@end

@implementation EX_ABFloatingViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	ABFloatingView * floatingView_ = [[ABFloatingView alloc] initWithOffset:CGPointMake(0, FLOATINGVIEW_OFFSET_Y)];
	floatingView_.inventoryCode= @"test_bluerain1-MSU3QzMlN0MxMDAlN0MxMDA=";
	[floatingView_ requestAD];
	[self.view addSubview:floatingView_];
	self.floatingView = floatingView_;
	self.floatingView.isShowCloseButtton = YES;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

-(void)scrollViewDidScroll:(UIScrollView*) scrollView {
	
	
	float offsetY = scrollView.contentOffset.y;
	self.floatingView.offSet  = CGPointMake(0, offsetY + FLOATINGVIEW_OFFSET_Y);
	
//	CGRect rect = self.floatingView.frame;
//	rect.origin.y = offsetY + FLOATINGVIEW_OFFSET_Y;
//	self.floatingView.frame = rect;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 30;
}


 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DefaultCell" forIndexPath:indexPath];
	 cell.textLabel.text = [NSString stringWithFormat:@"%lu ABFloatingView",(long)indexPath.row];
	 return cell;
}

@end
