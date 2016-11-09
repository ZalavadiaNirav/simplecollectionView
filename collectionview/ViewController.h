//
//  ViewController.h
//  collectionview
//
//  Created by C N Soft Net on 08/11/16.
//  Copyright © 2016 C N Soft Net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDelegate,UICollectionViewDataSource>
{

    int numberofballon;
    NSMutableArray *colorArr;
    
    
}

@property (strong, nonatomic) IBOutlet UICollectionView *categoryCollection;
@property (strong, nonatomic) IBOutlet UIView *ballonview;
@property (strong, nonatomic) IBOutlet UIImageView *ballonImgvw;

@end

