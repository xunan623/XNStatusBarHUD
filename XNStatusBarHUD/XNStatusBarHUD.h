//
//  XNStatusBarHUD.h
//  状态栏指示器
//
//  Created by xunan on 16/6/29.
//  Copyright © 2016年 xunan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XNStatusBarHUD : NSObject
+ (void)showMessage:(NSString *)message image:(UIImage *)image;
+ (void)showSuccess:(NSString *)success;
+ (void)showMessage:(NSString *)message;
+ (void)showError:(NSString *)error;
+ (void)showLoading:(NSString *)loading;
+ (void)hide;


@end
