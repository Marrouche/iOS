//
//  SideViewController.h
//  HouseHunter
//
//  
//  Copyright (c) 2015 MandMBadgers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SideViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UIActionSheetDelegate> {
    
    BOOL _isLoggedIn;
    NSMutableArray* _arrayUserSettings;
}

@property(nonatomic, retain) IBOutlet UITableView* tableViewSide;
@property (nonatomic, retain) UIActionSheet* actionSheet;

-(IBAction)didClickFoldButton:(id)sender;
@end
