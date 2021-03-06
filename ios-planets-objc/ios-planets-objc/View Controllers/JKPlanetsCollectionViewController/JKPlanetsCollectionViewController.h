//
//  JKPlanetsCollectionViewController.h
//  ios-planets-objc
//
//  Created by TuneUp Shop  on 2/25/19.
//  Copyright © 2019 jkaunert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JKPlanetController.h"

NS_ASSUME_NONNULL_BEGIN

@interface JKPlanetsCollectionViewController : UICollectionViewController <UIPopoverPresentationControllerDelegate>

- (IBAction)unwindToJKPlanetsCollectionViewController:(UIStoryboardSegue *)sender;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)animated;
- (void)planetsDidChange:(NSNotification *)notification;
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id _Nullable)sender;
- (nonnull instancetype)initWithCollectionViewLayout:(UICollectionViewLayout *)layout;


@end

NS_ASSUME_NONNULL_END
