//
//  ABInterstitialController.h
//  ADBalloon
//
//  Created by Hang on 11/25/14.
//  Copyright (c) 2014 Neov. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ABInterstitialController;
@protocol ABInterstitialControllerDelegate <NSObject>

@optional

- (void)abViewWillLoadAD:(ABInterstitialController *)banner;
- (void)abViewDidLoadAD:(ABInterstitialController *)banner;
- (void)abrView:(ABInterstitialController *)banner didFailToReceiveAdWithError:(NSError *)error;
- (BOOL)bannerViewActionShouldBegin:(ABInterstitialController *)banner willLeaveApplication:(BOOL)willLeave;
- (void)bannerViewActionDidFinish:(ABInterstitialController *)banner;
@end

@interface ABInterstitialController : NSObject
@property (readonly) BOOL isLoaded;
@property (readwrite) NSString *inventoryCode;
@property (weak) id<ABInterstitialControllerDelegate> delegate;
- (void)requestADAndShow;
- (instancetype)initWithInventoryCode:(NSString*)inventoryCode;
@end
