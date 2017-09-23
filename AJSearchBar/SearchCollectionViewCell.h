//
//  SearchCollectionViewCell.h
//  准到-ipad
//
//  Created by zhundao on 2017/9/8.
//  Copyright © 2017年 zhundao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchCollectionViewCell : UICollectionViewCell

@property(nonatomic,copy)NSString *searchStr;

@property(nonatomic,strong)UILabel *wordLabel;

/*! 返回cell的size */
- (CGSize)sizeForCell;

@end
