//
//  ViewController.m
//  状态栏指示器
//
//  Created by xunan on 16/6/29.
//  Copyright © 2016年 xunan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [XNStatusBarHUD showSuccess:@"加载成功"];
//    [XNStatusBarHUD showError:@"加载失败"];
//    [XNStatusBarHUD showLoading:@"正在加载..."];
//

}
- (IBAction)hide:(id)sender {
    [XNStatusBarHUD hide];
}
- (IBAction)success:(id)sender {
    [XNStatusBarHUD showSuccess:@"@加载成功"];
}

- (IBAction)error:(id)sender {
    [XNStatusBarHUD showError:@"加载失败"];

}
- (IBAction)loading:(id)sender {
    [XNStatusBarHUD showLoading:@"正在加载..."];

}
@end
