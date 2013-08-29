//
//  ENHViewController.m
//  Autolayout
//
//  Created by Dillan Laughlin on 6/21/13.
//  Copyright (c) 2013 Enharmonic. All rights reserved.
//

#import "ENHViewController.h"

@interface ENHViewController ()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topButtonCenterXConstraint;
@property (weak, nonatomic) IBOutlet UIButton *topButton;
@property (weak, nonatomic) IBOutlet UIButton *middleButton;
@property (weak, nonatomic) IBOutlet UIButton *makeTextLongButton;
@property (weak, nonatomic) IBOutlet UILabel *middleLabel;

@end

@implementation ENHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.containerView removeConstraint:self.topButtonCenterXConstraint];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self.topButton
                                                                  attribute:NSLayoutAttributeCenterX
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.middleButton
                                                                  attribute:NSLayoutAttributeCenterX
                                                                 multiplier:1.0f
                                                                   constant:1.0f];
    [self.view addConstraint:constraint];
}

- (IBAction)makeTextLongButtonTapped:(id)sender
{
    [self.middleLabel setText:@"Hello Long World:"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
