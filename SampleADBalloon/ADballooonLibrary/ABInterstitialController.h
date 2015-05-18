//
//  ABInterstitialController.h
//  ADBalloon
//
//  Created by Hang on 11/25/14.
//  Copyright (c) 2014 Neov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ABError.h"
@class ABInterstitialController;
@protocol ABInterstitialControllerDelegate <NSObject>

@optional

- (void)abInterstitialControllerWillLoadAD:(ABInterstitialController *)controller;
- (void)abInterstitialControllerWillShow:(ABInterstitialController *)controller;
- (void)abInterstitialController:(ABInterstitialController *)controller didFailToReceiveAdWithError:(ABErrorType)error;
- (void)abInterstitialController:(ABInterstitialController *)controller;
- (BOOL)abInterstitialControllerActionShouldBegin:(ABInterstitialController *)controller willLeaveApplication:(BOOL)willLeave;
@end

@interface ABInterstitialController : NSObject
@property (readonly) BOOL isLoaded;
@property (readwrite) NSString *inventoryCode;
@property (weak) id<ABInterstitialControllerDelegate> delegate;
- (void)requestADAndShow;
- (instancetype)initWithInventoryCode:(NSString*)inventoryCode;
-(void)closeAD;
@end
