//
//  ABView.h
//  ADBalloon
//
//  Created by Hang on 11/11/14.
//  Copyright (c) 2014 Neov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ABError.h"

@class ABView;
@protocol ABViewDelegate <NSObject>

@optional
- (void)abView:(ABView *)banner didFailToReceiveAdWithError:(ABErrorType)error;
- (void)abViewDidLoadAD:(ABView *)banner;
- (void)abViewWillShow:(ABView *)banner;
- (void)abViewWillClose:(ABView*)banner;
- (BOOL)bannerViewActionShouldBegin:(ABView *)banner willLeaveApplication:(BOOL)willLeave;

//- (void)abViewWillLoadAd:(ABView *)banner;
//- (void)bannerViewActionDidFinish:(ABView *)banner;

@end

@interface ABView : UIView
@property (readonly) BOOL isLoaded;
@property(nonatomic, copy) IBInspectable NSString *inventoryCode;
@property (weak) id<ABViewDelegate> delegate;

-(void)initialize;
-(void)requestAD;
-(void)closeAD;

@end

