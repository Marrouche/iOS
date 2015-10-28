//
//  AppDelegate.h
//  HouseHunter
//
//  
//  Copyright (c) 2015 MandMBadgers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentViewController.h"
#import "SideViewController.h"
#import "PaperFoldNavigationController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) ContentViewController* contentViewController;
@property (nonatomic, strong) SideViewController* sideViewController;
@property (nonatomic, strong) PaperFoldNavigationController* paperFoldNavController;

+(AppDelegate*) instance;
+(void) foldLeftView;
+(void) unfoldLeftView;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (strong, nonatomic) FBSession *session;

@end
