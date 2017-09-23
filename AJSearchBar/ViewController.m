//
//  ViewController.m
//  AJSearchBar
//
//  Created by zhundao on 2017/9/23.
//  Copyright © 2017年 zhundao. All rights reserved.
//

#import "ViewController.h"


#import "SearchViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = ZDBackgroundColor;
    
    
    
    
    
    
    
    SearchViewController *search = [[SearchViewController alloc]init];
    [self.navigationController pushViewController:search animated:YES];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
