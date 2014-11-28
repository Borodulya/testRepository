//
//  SBViewController.m
//  MySliderTest
//
//  Created by Admin on 21.11.14.
//  Copyright (c) 2014 Sergii Borodin. All rights reserved.
//

#import "SBViewController.h"

@interface SBViewController ()

@end

@implementation SBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self refreshColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private method

- (void) refreshColor {
    
    CGFloat red = self.redComponentSlider.value;
    CGFloat green = self.greenComponentSlider.value;
    CGFloat blue = self.blueComponentSlider.value;
    
    UIColor* color = [UIColor colorWithRed:red green:green blue:blue alpha:1.f];
    
    self.valueLabel.text = [NSString stringWithFormat:@"{%1.2f, %1.2f, %1.2f}", red, green, blue];
    
    self.view.backgroundColor = color;
    
    
}

#pragma mark - Actions

- (IBAction)changedColorAction:(UISlider *)sender {
    
    [self refreshColor];
    
}
@end
