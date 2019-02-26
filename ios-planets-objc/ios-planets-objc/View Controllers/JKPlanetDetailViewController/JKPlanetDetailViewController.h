//
//  JKPlanetDetailViewController.h
//  ios-planets-objc
//
//  Created by TuneUp Shop  on 2/25/19.
//  Copyright © 2019 jkaunert. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JKPlanetDetailViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UILabel *label;

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder;
- (void)decodeRestorableStateWithCoder:(NSCoder *)coder;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil;
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder;

@end

NS_ASSUME_NONNULL_END
