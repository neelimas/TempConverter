//
//  ViewController.m
//  TempConverter
//
//  Created by user on 11/11/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "ViewController.h"
#import "MyConverter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)convertTemp:(TempScale) scale {
    UITextField *tf = [self tempField];
    NSString *str = [tf text];
    float temp = [str floatValue];
    MyConverter *converter  = [[MyConverter alloc] init];
    converter.temperatureScale = F;
    converter.temperature = temp;
    
    float result = [converter convert:scale];
    [[self resultLabel] setText:[NSString stringWithFormat:@"%f", result]];
}

- (IBAction)convertAction:(id)sender {
    [[self view] endEditing:YES];
    UISegmentedControl *sc = [self control];
    [self convertTemp:sc.selectedSegmentIndex ];
    
    
}

- (IBAction)textFieldReturn:(id)sender {
    UISegmentedControl *sc = [self control];
    [self convertTemp:sc.selectedSegmentIndex ];
}



- (IBAction)userSelectedTemp:(id)sender {
   UISegmentedControl *sc = [self control];
    [self convertTemp: sc.selectedSegmentIndex];
    
}
@end
