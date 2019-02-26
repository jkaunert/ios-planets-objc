//
//  JKPlanet.m
//  ios-planets-objc
//
//  Created by TuneUp Shop  on 2/25/19.
//  Copyright © 2019 jkaunert. All rights reserved.
//

#import "JKPlanet.h"

@implementation JKPlanet

- (instancetype)initWithPlanet:(NSString *)name imageName:(NSString *)imageName {
        self.name = _name;
        self.imageName = _imageName;
        self.image = [UIImage imageNamed:_imageName];
        return self;
}
@end
