//
//  JKPlanetsCollectionViewController.h
//  ios-planets-objc
//
//  Created by TuneUp Shop  on 2/25/19.
//  Copyright © 2019 jkaunert. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JKPlanetsCollectionViewController : UICollectionViewController <UIPopoverPresentationControllerDelegate>

- (IBAction)unwindToPlanetsCollectionViewController:(UIStoryboardSegue *)sender;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)animated;
- (void)planetsDidChange:(NSNotification *)notification;
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id _Nullable)sender;
- (nonnull instancetype)initWithCollectionViewLayout:(UICollectionViewLayout *)layout;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil;
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder;

@end

NS_ASSUME_NONNULL_END
