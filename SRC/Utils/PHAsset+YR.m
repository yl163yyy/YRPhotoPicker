//
//  PHAsset+YR.m
//  YRPhotoPicker
//
//  Created by Yuan on 2018/11/13.
//  Copyright © 2018年 YuanLiang's MacBook. All rights reserved.
//

#import "PHAsset+YR.h"

@implementation PHAsset(YR)

- (NSData *)originImageJPEGData {
    UIImage *image = [self originImage];
    return image ? UIImageJPEGRepresentation(image, 1.0f) : nil;
}

- (UIImage *)originImage {
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    options.synchronous = YES;
    options.networkAccessAllowed = YES;
    __block UIImage *image = nil;
    [[PHImageManager defaultManager] requestImageForAsset:self targetSize:PHImageManagerMaximumSize contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
        image = result ? result : nil;
    }];
    return image;
}

@end
