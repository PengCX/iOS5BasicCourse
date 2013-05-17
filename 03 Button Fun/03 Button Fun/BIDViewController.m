//
//  BIDViewController.m
//  03 Button Fun
//
//  Created by Peng.CX on 13-5-16.
//
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

@synthesize statusText;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewDidUnload{
    [self setStatusText:nil];
    [super viewDidUnload];
}
- (IBAction)buttonPressed:(UIButton *)sender {
    NSString *title = [sender titleForState:UIControlStateNormal];
    statusText.text = [NSString stringWithFormat:@"%@ button pressed",title];
}
@end
