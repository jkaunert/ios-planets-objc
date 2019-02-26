//
//  JKPlanetController.m
//  ios-planets-objc
//
//  Created by TuneUp Shop  on 2/25/19.
//  Copyright © 2019 jkaunert. All rights reserved.
//

#import "JKPlanetController.h"
#import "JKPlanet.h"

@implementation JKPlanetController

- (id)init {
    if (self != nil) {
        
        _planets = @[
                     [[JKPlanet alloc] initWithPlanet:@"Mercury" imageName:@"mercury"],
                     [[JKPlanet alloc] initWithPlanet:@"Venus" imageName:@"venus"],
                     [[JKPlanet alloc] initWithPlanet:@"Earth" imageName:@"earth"],
                     [[JKPlanet alloc] initWithPlanet:@"Mars" imageName:@"mars"],
                     [[JKPlanet alloc] initWithPlanet:@"Jupiter" imageName:@"jupiter"],
                     [[JKPlanet alloc] initWithPlanet:@"Saturn" imageName:@"saturn"],
                     [[JKPlanet alloc] initWithPlanet:@"Uranus" imageName:@"uranus"],
                     [[JKPlanet alloc] initWithPlanet:@"Neptune" imageName:@"neptune"]
                     ];
        
        //[[JKPlanet alloc] initWithPlanet:@"Pluto" imageName:@"pluto"]

        NSLog(@"%@", _planets);
        
    }
    return self;
}




@end
