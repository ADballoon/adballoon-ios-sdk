//
//  AppDelegate.h
//  SampleADBalloon
//
//  Created by Hang on 12/4/14.
//  Copyright (c) 2014 ADBalloon. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifdef __cplusplus
#define COREDATA_EXTERN		extern "C"
#define COREDATA_PRIVATE_EXTERN	__attribute__((visibility("hidden"))) extern "C"
#else
#define COREDATA_EXTERN		extern
#define COREDATA_PRIVATE_EXTERN	__attribute__((visibility("hidden"))) extern
#endif



@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

