//
//  ABFloatingView.h
//  ADBalloon
//
//  Created by Hang on 12/19/14.
//  Copyright (c) 2014 ADBalloon. All rights reserved.
//

#import "ABView.h"

@interface ABFloatingView : ABView
@property(readwrite) BOOL isShowCloseButtton;
@property (nonatomic, readwrite) CGPoint offSet;
-(instancetype)initWithOffset:(CGPoint)point;
-(void)closeAD;
@end
