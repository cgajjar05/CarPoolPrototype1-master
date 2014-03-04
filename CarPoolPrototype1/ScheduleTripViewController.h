//
//  ScheduleTripViewController.h
//  CarPoolPrototype1
//
//  Created by Chirag Gajjar on 3/4/14.
//  Copyright (c) 2014 Chirag Gajjar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScheduleTripViewController : UIViewController <UIPickerViewDataSource , UIPickerViewDelegate>

@property (nonatomic, strong) NSArray *models;

@property (weak, nonatomic) IBOutlet UIPickerView *modelPicker;
@property (weak, nonatomic) IBOutlet UILabel *passengers;
@property (retain, nonatomic) IBOutlet UISlider *noOfPassengers;

- (IBAction)passengerSlider:(id)sender;

@end
