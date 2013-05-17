//
//  PersistenceViewController.h
//  11 Presistence Plist
//
//  Created by Peng.CX on 13-5-14.
//  Copyright (c) 2013年 Peng.CX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersistenceViewController : UIViewController{
    UITextField *textField1;
    UITextField *textField2;
    UITextField *textField3;
    UITextField *textField4;
}

@property (nonatomic, retain) IBOutlet UITextField *textField1;
@property (nonatomic, retain) IBOutlet UITextField *textField2;
@property (nonatomic, retain) IBOutlet UITextField *textField3;
@property (nonatomic, retain) IBOutlet UITextField *textField4;

-(NSString *)getFileNameString;
-(IBAction)giveUpFirstResponse;
-(IBAction)save;
-(IBAction)restore;

@end
