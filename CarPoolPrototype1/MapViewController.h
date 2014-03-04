//
//  MapViewController.h
//  CarPoolPrototype1
//
//  Created by Chirag Gajjar on 3/4/14.
//  Copyright (c) 2014 Chirag Gajjar. All rights reserved. 
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController{
    
    MKMapView *mapview;
    
}

@property (nonatomic,retain) IBOutlet MKMapView *mapview;

-(IBAction)setMap:(id)sender;
-(IBAction)getLocation;

@end
