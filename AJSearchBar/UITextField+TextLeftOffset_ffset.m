//
//  UITextField+TextLeftOffset_ffset.m
//  zhundao
//
//  Created by zhundao on 2017/4/10.
//  Copyright © 2017年 zhundao. All rights reserved.
//

#import "UITextField+TextLeftOffset_ffset.h"

@implementation UITextField (TextLeftOffset_ffset)
 - (void)setTextOffsetWithLeftViewRect : (CGRect)rect WithMode :(UITextFieldViewMode)mode
{
    UIView *view = [[UIView alloc]initWithFrame:rect];
    self.leftView = view;
    self.leftViewMode = mode; //枚举 默认为no 不显示leftView 
}
@end
