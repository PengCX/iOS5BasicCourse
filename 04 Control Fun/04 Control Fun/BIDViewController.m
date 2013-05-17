//
//  BIDViewController.m
//  04 Control Fun
//
//  Created by Peng.CX on 13-5-16.
//
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

@synthesize numberField;
@synthesize nameField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)viewDidUnload{
    [self setNameField:nil];
    [self setNumberField:nil];
    [super viewDidUnload];
}

@end
