//
//  AppDelegate.m
//  KKLog
//
//  Created by JackSun on 15/4/9.
//  Copyright (c) 2015年 Coneboy_K. All rights reserved.
//

#import "AppDelegate.h"
#import "KKLog.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

/// 程序Crash后的处理函数
void uncaughtExceptionHandler(NSException *exception)
{
    [KKLog logCrash:exception];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    //注册程序 Crash后的处理函数
    NSSetUncaughtExceptionHandler(&uncaughtExceptionHandler);
    //KKLog 初始化函数
    [KKLog logIntial];
    for (int i=0; i<10; i++) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^(void) {
            
            for (int i=0; i<100; i++) {
                [KKLog logI:@"info"];
                [KKLog logE:@"error"];
                [KKLog logW:@"worring"];
                
                KKLogI(@"info");
                KKLogD(@"DDDD");
                
                
            }
        });
        
    }

    
    
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
