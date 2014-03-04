//
//  ScheduleTripViewController.m
//  CarPoolPrototype1
//
//  Created by Chirag Gajjar on 3/4/14.
//  Copyright (c) 2014 Chirag Gajjar. All rights reserved.
//

#import "ScheduleTripViewController.h"

@interface ScheduleTripViewController ()

@end

@implementation ScheduleTripViewController

@synthesize modelPicker, passengers, models, noOfPassengers;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"Model" ofType:@"plist"];
    
    models = [[NSArray alloc]initWithContentsOfFile:path];
    
    int r = noOfPassengers.value;
    
    passengers.text = [[NSString alloc]initWithFormat:@"%d",r];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIpicker view data source and delegate methods

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [models count];
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    return models[row];
    
}

//- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
//
//}

- (IBAction)passengerSlider:(UISlider *)sender {
    
    int r = noOfPassengers.value;
    
    passengers.text = [[NSString alloc]initWithFormat:@"%d",r];
    
}
@end
