//
//  ViewController.m
//  Floating Heads
//
//  Created by Chelsea Liu on 7/15/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import "ViewController.h"
#import "FloatingMenuController.h"

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIImage *backgroundImage = [UIImage imageNamed:@"inbox"];
    CGSize newSize = CGSizeMake(CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame));
    UIGraphicsBeginImageContext(newSize);
    [backgroundImage drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [self.view setContentMode:UIViewContentModeScaleAspectFit];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:newImage]];
    
}
- (IBAction)showFloatingMenu:(id)sender {
    
    FloatingMenuController *menuController = [[FloatingMenuController alloc] initWithView:sender];
    menuController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    menuController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:menuController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
