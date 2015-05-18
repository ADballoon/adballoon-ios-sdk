//
//  ABBannerView.h
//  ADBalloon
//
//  Created by Hang on 12/19/14.
//  Copyright (c) 2014 ADBalloon. All rights reserved.
//

#import "ABView.h"

@interface ABBannerView : ABView
@property (readwrite) NSTimeInterval requestInterval;
-(void)stopRequestAD;
@end
