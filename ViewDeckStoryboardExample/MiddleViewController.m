//
//  MiddleViewController.m
//  ViewDeckStoryboardExample
//
//  Created by Simon Rice on 10/10/2012.
//  Copyright (c) 2012 Simon Rice. All rights reserved.
//

#import "MiddleViewController.h"
#import <ViewDeck/IIViewDeckController.h>

@interface MiddleViewController ()

@end

@implementation MiddleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)revealSidebar:(UIBarButtonItem *)sender {
    [self.viewDeckController toggleLeftViewAnimated:YES];
}

@end
