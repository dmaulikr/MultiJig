//
//  MultiJigAppDelegate.m
//  MultiJig
//
//  Created by Senn, Matthew on 11/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MultiJigAppDelegate.h"
#import "Menu.h"

#import "MultiJigViewController.h"

@implementation MultiJigAppDelegate
@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    
    //to start a menu screen we'll need to do something like this (not 100% sure)
    /*
     
     UIViewController controller = [[UIViewController alloc] initWithNibName:@"Something.xib" bundle:nil];
     
     then either create navcon with initWithRootViewControler....or something similar to recognize it
     then self.window.rootViewController = navcon;
     
     
     in the Something.h and Something.m is where we'd hook up buttons to methods that do stuff.
     like, for instance, push another view controller (like our main game MultiJigViewController).
     you can do that (inside Something.m) by [self.navigationController pushblahblahblah:blarg]
     
     */
     
    self.viewController = [[[Menu alloc] init] autorelease];
   
    UINavigationController *navcon = [[UINavigationController alloc] init];
    
    self.window.rootViewController = [navcon autorelease];
    
    [navcon pushViewController:self.viewController animated:YES];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    _window = nil;
    _viewController = nil;
    [super dealloc];
}

@end
