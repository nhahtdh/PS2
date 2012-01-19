//
//  ViewController.m
//  Game
//
//  Created by  on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize gamearea;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Load the images into UIImage objects
    UIImage *bgImage = [UIImage imageNamed:@"background.png"];
    UIImage *groundImage = [UIImage imageNamed:@"ground.png"];
    
    // Get the width and height of the two images
    CGFloat backgroundWidth = bgImage.size.width;
    CGFloat backgroundHeight = bgImage.size.height;
    CGFloat groundWidth = groundImage.size.width;
    CGFloat groundHeight = groundImage.size.height;
    
    // Place each of them in an UIImageView
    UIImageView *background = [[UIImageView alloc] initWithImage:bgImage];
    UIImageView *ground = [[UIImageView alloc] initWithImage:groundImage];
    CGFloat groundY = gamearea.frame.size.height - groundHeight;
    CGFloat backgroundY = groundY - backgroundHeight;
    
    // The frame property holds the position and size of the views
    // the CGRectMake methods arguments are : x position, y position, width,
    // height
    background.frame = CGRectMake(0, backgroundY, backgroundWidth, backgroundHeight);
    ground.frame = CGRectMake(0, groundY, groundWidth, groundHeight);
    
    // Add these views as subviews of the gamearea.
    [gamearea addSubview:background];
    [gamearea addSubview:ground];
    
    // Set the content size so that gamearea is scrollable
    // otherwise it defaults to the current window size
    
    CGFloat gameareaHeight = backgroundHeight + groundHeight;
    CGFloat gameareaWidth = backgroundWidth;
    [gamearea setContentSize:CGSizeMake(gameareaWidth, gameareaHeight)];
}

- (void)viewDidUnload
{
    [self setGamearea:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)buttonPressed:(id)sender {
    UIColor *newColor;
    UIButton *button = (UIButton*)sender;
    if ([button titleColorForState:UIControlStateNormal] ==
        [UIColor blackColor]) {
        newColor = [UIColor lightGrayColor];
    } else {
        newColor = [UIColor blackColor];
    }
    [button setTitleColor:newColor forState:UIControlStateNormal];
}
@end
