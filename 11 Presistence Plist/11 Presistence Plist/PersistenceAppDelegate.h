//
//  PersistenceAppDelegate.h
//  11 Presistence Plist
//
//  Created by Peng.CX on 13-5-14.
//  Copyright (c) 2013年 Peng.CX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersistenceViewController.h"

@interface PersistenceAppDelegate : UIResponder <UIApplicationDelegate>{
    UIWindow *window;
    PersistenceViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PersistenceViewController *viewController;

@end
