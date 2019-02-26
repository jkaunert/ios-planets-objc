//
//  JKPlanetController.h
//  ios-planets-objc
//
//  Created by TuneUp Shop  on 2/25/19.
//  Copyright © 2019 jkaunert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JKPlanet.h"

NS_ASSUME_NONNULL_BEGIN

@interface JKPlanetController : NSObject

- (id)init;

@property (nonatomic, copy)NSArray<JKPlanet *> *planets;
@property BOOL *shouldShowPluto;

- (NSArray*)returnPlanetArray;


@end

NS_ASSUME_NONNULL_END
