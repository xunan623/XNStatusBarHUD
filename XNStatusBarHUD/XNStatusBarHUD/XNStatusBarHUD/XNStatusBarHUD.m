//
//  XNStatusBarHUD.m
//  状态栏指示器
//
//  Created by xunan on 16/6/29.
//  Copyright © 2016年 xunan. All rights reserved.
//

#import "XNStatusBarHUD.h"

@implementation XNStatusBarHUD

static UIWindow *window_;
static NSTimer *timer_;


#define XNTEXTFONT [UIFont systemFontOfSize:12]
#define XNStatusTimer 1.5
#define XNTimerAnimationDru 0.25
#define XNWindowH 20

+ (void)showWindow {
    
    // 动画
    CGRect frame = CGRectMake(0, - XNWindowH, [UIScreen mainScreen].bounds.size.width, XNWindowH);
    window_.hidden = YES;
    window_ = [[UIWindow alloc] init];
    window_.frame = frame;
    window_.backgroundColor = [UIColor orangeColor];
    window_.hidden = NO;
    window_.windowLevel = UIWindowLevelAlert;
    
    frame.origin.y = 0;
    [UIView animateWithDuration:XNTimerAnimationDru animations:^{
        window_.frame = frame;
    }];
}

+ (void)showMessage:(NSString *)message image:(UIImage *)image {
    
    [timer_ invalidate];
    
    [XNStatusBarHUD showWindow];
    // 添加按钮
    UIButton *btn = [[UIButton alloc] init];
    [btn setTitle:message forState:UIControlStateNormal];
    btn.titleLabel.font = XNTEXTFONT;
    if (image) {
        btn.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        [btn setImage:image forState:UIControlStateNormal];
    }
    btn.frame = window_.frame;
    [window_ addSubview:btn];
    
    // 添加定时器
    timer_ = [NSTimer scheduledTimerWithTimeInterval:XNStatusTimer target:self selector:@selector(hide) userInfo:nil repeats:NO];

}

+ (void)showSuccess:(NSString *)success {
    [XNStatusBarHUD showMessage:success image:[UIImage imageNamed:@"XNStatusBarHUD.bundle/success"]];
}

+ (void)showMessage:(NSString *)message {
    [XNStatusBarHUD showMessage:message image:nil];
}
+ (void)showError:(NSString *)error {
    [XNStatusBarHUD showMessage:error image:[UIImage imageNamed:@"XNStatusBarHUD.bundle/error"]];
}

+ (void)showLoading:(NSString *)loading {
    [timer_ invalidate];
    timer_ = nil;
    
    [XNStatusBarHUD showWindow];

    UILabel *label = [[UILabel alloc] init];
    label.textAlignment = NSTextAlignmentCenter;
    label.frame = window_.frame;
    label.text = loading;
    label.textColor = [UIColor whiteColor];
    label.font = XNTEXTFONT;
    
    [window_ addSubview:label];
    
    UIActivityIndicatorView *loadingView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    CGFloat mesW = [loading sizeWithAttributes:@{NSFontAttributeName : XNTEXTFONT}].width;
    CGFloat centerX = (window_.frame.size.width - mesW) * 0.5 - XNWindowH;
    CGFloat centerY = window_.frame.size.height * 0.5;
    
    loadingView.center = CGPointMake(centerX, centerY);
    [loadingView startAnimating];
    [window_ addSubview:loadingView];
    
}
+ (void)hide {
    
    CGRect frame = CGRectMake(0, - XNWindowH, [UIScreen mainScreen].bounds.size.width, XNWindowH);
    [UIView animateWithDuration:XNTimerAnimationDru animations:^{
        window_.frame = frame;
    } completion:^(BOOL finished) {
        window_ = nil;
        timer_ = nil;
    }];
    


}

@end
