//
//  ViewController.m
//  collectionview
//
//  Created by C N Soft Net on 08/11/16.
//  Copyright © 2016 C N Soft Net. All rights reserved.
//

#import "ViewController.h"
#import "CategoryCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _categoryCollection.delegate=self;
    _categoryCollection.dataSource=self;

    colorArr=[[NSMutableArray alloc] init];
    
    
    float INCREMENT = 0.1;
    for (float hue = 0.0; hue < 1.0; hue += INCREMENT) {
        UIColor *color = [UIColor colorWithHue:hue
                                    saturation:1.0
                                    brightness:1.0
                                         alpha:1.0];
        [colorArr addObject:color];
    }
    

    numberofballon=10;

    int increament=0;
    for (int i=0; i<numberofballon; i++)
    {
        
        UIImageView *imgvw=[[UIImageView alloc] initWithFrame:CGRectMake(800,_ballonview.frame.origin.y+8,50, 50)];
        UIImage *img=[UIImage imageNamed:@"baloon"];
        
        imgvw.image = [img imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];//ignore color in image draw image as template
        UIColor *clr=[colorArr objectAtIndex:i];
        [imgvw setTintColor:clr];
        
        
        [_ballonview addSubview:imgvw];
        if (i%2==0)
        {
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:1.0];
            [UIView setAnimationDelay:0.7];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            imgvw.frame=CGRectMake(increament, _ballonview.frame.origin.y+16, 50, 50);
            [UIView commitAnimations];
            increament=increament+40;

            
        }
        else
        {

            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:1.0];
            [UIView setAnimationDelay:0.7];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            imgvw.frame=CGRectMake(increament, _ballonview.frame.origin.y+8, 50, 50
                                   );
            [UIView commitAnimations];
            increament=increament+40;

        }
    }
    
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CategoryCell *cell=(CategoryCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CategoryCell" forIndexPath:indexPath];
    if(collectionView == _categoryCollection)
    {
        cell.ItemName.text=[NSString stringWithFormat:@"item %ld",(long)indexPath.row];
        cell.ItemImage.image=[UIImage imageNamed:@"car1.png"];
    
    }
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
