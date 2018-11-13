//
//  UIView+YR.h
//  YRPhotoPicker
//
//  Created by Yuan on 2018/11/13.
//  Copyright © 2018年 YuanLiang's MacBook. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView(YR)


+ (CGFloat)yr_screenWidth;
+ (CGFloat)yr_screenHeight;
+ (CGFloat)yr_statusBarHeight;
+ (CGFloat)yr_naviBarHeight;
+ (CGFloat)yr_topPadding;
+ (UIEdgeInsets)yr_safeAreaInsets;

@property (nonatomic) CGFloat yr_width;
@property (nonatomic) CGFloat yr_height;
@property (nonatomic, assign) CGFloat yr_left;
@property (nonatomic, assign) CGFloat yr_right;
@property (nonatomic, assign) CGFloat yr_top;
@property (nonatomic, assign) CGFloat yr_bottom;
@property (nonatomic, assign) CGFloat yr_centerY;
@property (nonatomic, assign) CGFloat yr_centerX;
@property (nonatomic, assign) CGSize yr_size;
@property (nonatomic, assign) CGPoint yr_origin;


@end

NS_ASSUME_NONNULL_END
