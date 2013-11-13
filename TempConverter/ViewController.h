//
//  ViewController.h
//  TempConverter
//
//  Created by user on 11/11/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tempField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)convertAction:(id)sender;
- (IBAction)textFieldReturn:(id)sender;

- (IBAction)userSelectedTemp:(id)sender;

@property (weak, nonatomic) IBOutlet UISegmentedControl *control;

@end
