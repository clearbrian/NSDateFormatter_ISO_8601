//
//  COLCAppDelegate.m
//  NSDateFormatter_ISO_8601
//
//  Created by Brian Clear (gbxc) on 04/03/2014.
//  Copyright (c) 2014 Brian Clear (gbxc). All rights reserved.
//

#import "COLCAppDelegate.h"
#import "NSString+NSDateFormatter_ISO_8601.h"

@implementation COLCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    
    
    //-----------------------------------------------------------------------------------
    
    //GMT (+00:00)
    NSString * tokenIssued_ = @"2014-03-04T11:19:40.0139887+00:00";
    
    //BST - starts Sunday, March 30
    //(+01:00)
    NSString * tokenExpiry_ = @"2014-04-01T11:19:40.0139887+01:00";
    
    //-----------------------------------------------------------------------------------
    
    NSLog(@"%s     tokenIssued_:%@", __PRETTY_FUNCTION__, tokenIssued_);
    
    NSDate * date_tokenIssued = [tokenIssued_ format_ISO_8601_TimeStringAsNSDate];
    
    NSLog(@"%s date_tokenIssued:%@", __PRETTY_FUNCTION__, date_tokenIssued);
    
    NSLog(@"%s ========================",__PRETTY_FUNCTION__);
    
    
    //-----------------------------------------------------------------------------------
    
    NSLog(@"%s     tokenExpiry_:%@", __PRETTY_FUNCTION__, tokenExpiry_);
    
    NSDate * date_tokenExpiry = [tokenExpiry_ format_ISO_8601_TimeStringAsNSDate];
    
    NSLog(@"%s date_tokenExpiry:%@", __PRETTY_FUNCTION__, date_tokenExpiry);
    
    
    /*
     OUTPUT
     tokenIssued_:2014-03-04T11:19:40.0139887+00:00
     date_tokenIssued:2014-03-04 11:19:40 +0000
     
     ========================
     tokenExpiry_:2014-04-01T11:19:40.0139887+01:00
     date_tokenExpiry:2014-04-01 10:19:40 +0000  << NOTE HOUR IS ONE BEHIND STRING
     
     
     Output the same regardless of date of device.
     Set device date to April 2/ London - inside BST and same output
     */
    
    
    
    
    
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
