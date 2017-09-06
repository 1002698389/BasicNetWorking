//
//  ViewController.m
//  BasicNetWorking
//
//  Created by iOSCoderZhao on 2017/9/6.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "ViewController.h"
#import "BasicNetWorking.h"
#import "MBProgressHUD+MJ.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
/**
 网络请求（Get,Post,upload(上传图片)）
 */
- (IBAction)RequestData:(UIButton *)sender {
    [BasicNetWorking GET:@"http://123.56.182.186/oow/api/home/data.do?uid=31" parameters:nil success:^(id responseObject) {
        NSLog(@"%@",responseObject);
    } failure:^(NSError *error) {
        NSLog(@"%@",error.localizedDescription);
    }];
}
- (IBAction)RequestSuccess:(UIButton *)sender {
    [MBProgressHUD showSuccess:@"成功了"];
}
- (IBAction)RequestFail:(UIButton *)sender {
    [MBProgressHUD showError:@"失败了"];
}
- (IBAction)AlertMessage:(UIButton *)sender {
    [MBProgressHUD showAlert:@"纯展示"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
