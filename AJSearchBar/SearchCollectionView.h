//
//  SearchCollectionView.h
//  准到-ipad
//
//  Created by zhundao on 2017/9/8.
//  Copyright © 2017年 zhundao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BigSizeButton.h"
@protocol historyDelegate <NSObject>
/*! 长按删除 */
- (void)delete :(NSString *)text;
/*! 选中某个item */
- (void)select :(NSString *)text;

@end

@interface SearchCollectionView : UICollectionView

/*! 初始化 */
- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout array :(NSMutableArray *)dataArray;
/*! 数据源 */
@property(nonatomic,strong)NSMutableArray *dataArray;

@property(nonatomic,weak) id<historyDelegate> historyDelegate;
/*! 删除按钮 */
@property(nonatomic,strong)BigSizeButton *deleteButton;
@end
