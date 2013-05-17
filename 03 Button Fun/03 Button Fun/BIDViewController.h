//
//  BIDViewController.h
//  03 Button Fun
//
//  Created by Peng.CX on 13-5-16.
//
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *statusText;


- (IBAction)buttonPressed:(UIButton *)sender;

@end
