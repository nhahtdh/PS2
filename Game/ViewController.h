//
//  ViewController.h
//  Game
//
//  Created by  on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)buttonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *gamearea;

@end
