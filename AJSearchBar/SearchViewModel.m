//
//  SearchViewModel.m
//  准到-ipad
//
//  Created by zhundao on 2017/9/11.
//  Copyright © 2017年 zhundao. All rights reserved.
//

#import "SearchViewModel.h"

@implementation SearchViewModel

/*! 关键词搜索 */
//- (void)netWorkForsearch:(NSString *)str searchBlock:(searchBlock)searchBlock{
//    NSString *title = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//    NSString *listurl = 接口
//    AFHTTPSessionManager *manager = [AFManager shareManager];
//    NSDictionary *dic = @{@"Type":@"0",
//                          @"pageSize":@"12",
//                          @"title":title,
//                          @"curPage":@"1"};
//    [manager POST:listurl parameters:dic progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSDictionary *result = [NSDictionary dictionaryWithDictionary:responseObject];
//        NSArray *array1 = result[@"Data"];
//        if ([result[@"Res"] integerValue]==0) {
//            searchBlock(1,array1);
//        }else{
//            searchBlock(0,@[@""]);
//        }
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        NSLog(@"error = %@",error);
//        searchBlock(0,@[@""]);
//    }];
//    
//}


/*! 保存历史搜索 */
- (void)saveHistory :(NSString *)text{
    NSString *historyPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:@"history.plist"];
    NSMutableArray *array  = [NSMutableArray arrayWithContentsOfFile:historyPath];
    if (!array) {
        array = [NSMutableArray array];
    }
    if ([array containsObject:text]) {
        return;
    }else{
        [array insertObject:text atIndex:0];
    }
    [array writeToFile:historyPath atomically:YES];
}
/*! 获取历史搜索 */
- (NSArray *)readHistory{
    NSString *historyPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:@"history.plist"];
    NSArray *array  = [NSArray arrayWithContentsOfFile:historyPath];
    return array;
}
/*! 删除历史搜索 */
- (void)deleteHistory:(NSString *)text{
    NSString *historyPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:@"history.plist"];
    NSMutableArray *array  = [NSMutableArray arrayWithContentsOfFile:historyPath];
    if (text.length>0) {
        [array removeObject:text];
    }else{
        [array removeAllObjects];
    }
    [array writeToFile:historyPath atomically:YES];
}

/*! 历史搜索高度 */
- (NSInteger)rowForCollection :(NSArray *)array{
    CGFloat width = 0;
    NSInteger row = 1;
    /*! 55为cell额外宽度 +5的边距 */
    for (NSString *str in array) {
        CGSize size = [str boundingRectWithSize:CGSizeMake(1000, 30) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName :KweixinFont(14)} context:nil].size;
        width = width +size.width+55;
        NSLog(@"width = %f",width);
        /*! 减5 时因为最后一个item不需要 + 5的边距 */
        if ((width-5)/(kScreenWidth)>1) {
            row = row+1;
            width =size.width+55 ;
        }
    }
    return row>4?4:row;
}

@end
