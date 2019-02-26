//
//  JKPlanetsCollectionViewController.m
//  ios-planets-objc
//
//  Created by TuneUp Shop  on 2/25/19.
//  Copyright © 2019 jkaunert. All rights reserved.
//

#import "JKPlanetsCollectionViewController.h"
#import "JKPlanetController.h"
#import "JKPlanetCollectionViewCell.h"
#import "JKSettingsViewController.h"

@interface JKPlanetsCollectionViewController ()

@end

@implementation JKPlanetsCollectionViewController


static NSString * const reuseIdentifier = @"PlanetCell";


- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [self.collectionView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center addObserver:self
               selector:@selector(planetsDidChange:)
                   name:NSUserDefaultsDidChangeNotification
                 object:nil];
}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
    return UIModalPresentationNone;
}

- (void)planetsDidChange:(NSNotification *)notification {
    [self.collectionView reloadData];
}

- (IBAction)unwindToJKPlanetsCollectionViewController:(UIStoryboardSegue *)sender {
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    if ([segue  isEqual: @"ShowSettings"]) {
        JKSettingsViewController *detailVC = (JKSettingsViewController *)[segue destinationViewController];
        
        UIPopoverPresentationController *ppc = detailVC.popoverPresentationController;
        UIButton *button = sender;
        ppc.sourceView = button;
        ppc.sourceRect = button.bounds;
        ppc.backgroundColor = [UIColor blackColor];
        ppc.delegate = self;
    }
    
    // Pass the selected object to the new view controller.
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return [[[JKPlanetController sharedJKPlanetController]planets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JKPlanetCollectionViewCell *cell = (JKPlanetCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    JKPlanet *planet = [[[JKPlanetController sharedJKPlanetController]planets] objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:planet.imageName];
    cell.textLabel.text = planet.name;
    
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
