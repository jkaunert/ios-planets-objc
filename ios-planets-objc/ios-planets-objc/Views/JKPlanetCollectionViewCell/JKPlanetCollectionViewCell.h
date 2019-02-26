//
//  JKPlanetCollectionViewCell.h
//  ios-planets-objc
//
//  Created by TuneUp Shop  on 2/25/19.
//  Copyright © 2019 jkaunert. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JKPlanetCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UILabel *textLabel;

@end


NS_ASSUME_NONNULL_END
