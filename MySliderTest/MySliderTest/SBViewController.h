//
//  SBViewController.h
//  MySliderTest
//
//  Created by Admin on 21.11.14.
//  Copyright (c) 2014 Sergii Borodin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *valueLabel;


@property (weak, nonatomic) IBOutlet UISlider *redComponentSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenComponentSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueComponentSlider;

- (IBAction)changedColorAction:(UISlider *)sender;

@end
