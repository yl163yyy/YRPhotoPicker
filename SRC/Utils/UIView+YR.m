//
//  UIView+YR.m
//  YRPhotoPicker
//
//  Created by Yuan on 2018/11/13.
//  Copyright © 2018年 YuanLiang's MacBook. All rights reserved.
//

#import "UIView+YR.h"

@implementation UIView(YR)

+ (CGFloat)yr_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)yr_screenHeight {
    return [UIScreen mainScreen].bounds.size.height - [UIView yr_statusBarHeight];
}

+ (CGFloat)yr_topPadding {
    return [self yr_statusBarHeight] + [self yr_naviBarHeight];
}

+ (CGFloat)yr_statusBarHeight {
    return [[UIApplication sharedApplication] statusBarFrame].size.height;
}

+ (CGFloat)yr_naviBarHeight {
    return 44.0f;
}

+ (UIEdgeInsets)yr_safeAreaInsets {
    if (@available(iOS 11.0, *)) {
        return [[UIApplication sharedApplication].keyWindow safeAreaInsets];
    }
    return UIEdgeInsetsZero;
}


- (CGFloat)yr_width {
    return self.frame.size.width;
}

- (void)setYr_width:(CGFloat)width {
    if (width == self.yr_width) return;
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)yr_height {
    return self.frame.size.height;
}

- (void)setYr_height:(CGFloat)yr_height {
    if(yr_height == self.yr_height) return;
    CGRect frame = self.frame;
    frame.size.height = yr_height;
    self.frame = frame;
}

- (void)setYr_left:(CGFloat)yr_left {
    if(yr_left == self.yr_left) return;
    CGRect frame = self.frame;
    frame.origin.x = yr_left;
    self.frame = frame;
}

- (CGFloat)yr_left {
    return self.frame.origin.x;
}

- (void)setYr_top:(CGFloat)yr_top {
    if (yr_top == self.yr_top) return;
    CGRect frame = self.frame;
    frame.origin.y = yr_top;
    self.frame = frame;
}

- (CGFloat)yr_top {
    return self.frame.origin.y;
}

- (void)setYr_right:(CGFloat)yr_right {
    if (yr_right == self.yr_right) return;
    CGRect frame = self.frame;
    frame.origin.x = yr_right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)yr_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setYr_bottom:(CGFloat)yr_bottom {
    if (yr_bottom == self.yr_bottom) return;
    CGRect frame = self.frame;
    frame.origin.y = yr_bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)yr_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setYr_centerX:(CGFloat)yr_centerX {
    if (yr_centerX == self.yr_centerX) return;
    CGRect frame = self.frame;
    frame.origin.x = yr_centerX - self.frame.size.width / 2;
    self.frame = frame;
}

- (CGFloat)yr_centerX {
    return self.frame.origin.x + self.frame.size.width / 2;
}

- (void)setYr_centerY:(CGFloat)yr_centerY {
    if (yr_centerY == self.yr_centerY) return;
    CGRect frame = self.frame;
    frame.origin.y = yr_centerY - self.frame.size.height / 2;
    self.frame = frame;
}

- (CGFloat)yr_centerY {
    return self.frame.origin.y + self.frame.size.height / 2;
}

- (void)setYr_size:(CGSize)yr_size {
    CGRect frame = self.frame;
    frame.size = yr_size;
    self.frame = frame;
}

- (CGSize)hySize {
    return CGSizeMake(self.yr_width, self.yr_height);
}

- (void)setYr_origin:(CGPoint)yr_origin {
    CGRect frame = self.frame;
    frame.origin = yr_origin;
    self.frame = frame;
}

- (CGPoint)hyOrigin {
    return CGPointMake(self.yr_left, self.yr_top);
}


@end
