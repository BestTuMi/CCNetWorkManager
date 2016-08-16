//
//  ViewController.m
//  CCNetWorkManager
//
//  Created by jack on 16/8/16.
//  Copyright © 2016年 jack. All rights reserved.
//
#define RTHomeListUrl   @"https://www-rtapp.rt-mart.com.cn/RtApi/home.php"
#import "ViewController.h"
#import "CCNetWorkManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [CCNetWorkManager POSTRequestWithUrl:RTHomeListUrl params:@{@"encrypt_did":@"faea315b844c0d03b6e1569ae7aa0ceb"} success:^(NSDictionary *responseData) {
        NSLog(@"ddat==%@",responseData);
    } failure:^(NSError *requestError) {
        
    } progress:^(CGFloat progress) {
        
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
