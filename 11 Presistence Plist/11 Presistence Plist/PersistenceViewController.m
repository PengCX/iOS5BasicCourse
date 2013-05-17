//
//  PersistenceViewController.m
//  11 Presistence Plist
//
//  Created by Peng.CX on 13-5-14.
//  Copyright (c) 2013年 Peng.CX. All rights reserved.
//

#import "PersistenceViewController.h"

@interface PersistenceViewController ()

@end

@implementation PersistenceViewController

@synthesize textField1;
@synthesize textField2;
@synthesize textField3;
@synthesize textField4;

-(NSString *)getFileNameString
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *fileName = [documentsDirectory stringByAppendingPathComponent:@"plist.txt"];
    return fileName;
}

-(IBAction)giveUpFirstResponse
{
    [textField1 resignFirstResponder];
    [textField2 resignFirstResponder];
    [textField3 resignFirstResponder];
    [textField4 resignFirstResponder];
}

-(IBAction)save
{
    NSMutableArray *fieldValues = [[NSMutableArray alloc]init];
        
    [fieldValues addObject:textField1.text];
    [fieldValues addObject:textField2.text];
    [fieldValues addObject:textField3.text];
    [fieldValues addObject:textField4.text];
        
    [fieldValues writeToFile:[self getFileNameString] atomically:YES];
        
    [fieldValues release];
}

-(IBAction)restore
{
    NSString *fileName = [self getFileNameString];
    if ([[NSFileManager defaultManager]fileExistsAtPath:fileName])
    {
        NSArray *fieldValues = [[NSArray alloc]initWithContentsOfFile:fileName];
        
        textField1.text = [fieldValues objectAtIndex:0];
        textField2.text = [fieldValues objectAtIndex:1];
        textField3.text = [fieldValues objectAtIndex:2];
        textField4.text = [fieldValues objectAtIndex:3];
        
        [fieldValues release];
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [textField1 release];
    [textField2 release];
    [textField3 release];
    [textField4 release];
    [super dealloc];
}

@end
