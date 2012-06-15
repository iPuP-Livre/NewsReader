//
//  ReferencesViewController.m
//  NewsReader
//
//  Created by Marian PAUL on 27/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "ReferencesViewController.h"

@interface ReferencesViewController ()

@end

@implementation ReferencesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)dismissView:(id)sender 
{
    [self.parentViewController dismissModalViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
