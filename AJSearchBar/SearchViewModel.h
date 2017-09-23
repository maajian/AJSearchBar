//
//  SearchViewModel.h
//  准到-ipad
//
//  Created by zhundao on 2017/9/11.
//  Copyright © 2017年 zhundao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^searchBlock)(BOOL isSuccess,NSArray *array);

@interface SearchViewModel : NSObject


/*! 关键词搜索 */
//- (void)netWorkForsearch:(NSString *)str searchBlock:(searchBlock)searchBlock;




/*! 保存历史搜索 */
- (void)saveHistory :(NSString *)text;
/*! 读取历史搜索 */
- (NSArray *)readHistory;
/*! 删除历史搜索 */
- (void)deleteHistory:(NSString *)text;
/*! 历史搜索显示的行数 */
- (NSInteger)rowForCollection :(NSArray *)array;
@end
