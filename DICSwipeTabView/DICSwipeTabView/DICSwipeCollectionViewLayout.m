//
//  DICSwipeCollectionViewLayout.m
//  DICSwipeTabView
//
//  Created by GAOCE on 2017/1/2.
//  Copyright © 2017年 GAOCE. All rights reserved.
//





#import "DICSwipeCollectionViewLayout.h"

@interface DICSwipeCollectionViewLayout ()
@property (nonatomic, assign) CGSize size;
@end

@implementation DICSwipeCollectionViewLayout

- (instancetype)initWithItemSize:(CGSize)size {
    if (self = [super init]) {
        self.size = size;
    }
    return self;
}


- (void)prepareLayout {
    [super prepareLayout];
    self.itemSize = self.size;
    self.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.minimumLineSpacing = 0;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    return YES;
}



@end
