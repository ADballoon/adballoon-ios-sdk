//
//  AppDelegate.m
//  SampleADBalloon
//
//  Created by Hang on 12/4/14.
//  Copyright (c) 2014 ADBalloon. All rights reserved.
//

#import "AppDelegate.h"

@interface LSApplicationWorkspace : NSObject {
}

+ (id)defaultWorkspace;

- (id)URLOverrideForURL:(id)arg1;
- (void)_LSClearSchemaCaches;
- (BOOL)_LSPrivateRebuildApplicationDatabasesForSystemApps:(BOOL)arg1 internal:(BOOL)arg2 user:(BOOL)arg3;
- (void)_clearCachedAdvertisingIdentifier;
- (void)addObserver:(id)arg1;
- (id)allApplications;
@end
@class LSApplicationWorkspace;
@interface AppDelegate ()

@end
COREDATA_PRIVATE_EXTERN int _LSCopyVendorIdentifier(void* arg0, void* arg1, void* arg2, void* arg3, void* arg4, void* arg5, void* arg6);
COREDATA_EXTERN int  _LSCopyStringForVersion(int arg0, int arg1, int arg2) ;
@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customiza
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
