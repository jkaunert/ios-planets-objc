//
//  JKPlanet.h
//  ios-planets-objc
//
//  Created by TuneUp Shop  on 2/25/19.
//  Copyright © 2019 jkaunert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JKPlanet : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *imageName;
@property (nonatomic)UIImage *image;

- (instancetype)initWithPlanet:(NSString *)name
           imageName: (NSString *)imageName;



@end

NS_ASSUME_NONNULL_END
