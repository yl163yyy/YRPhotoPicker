//
//  PHAsset+YR.h
//  YRPhotoPicker
//
//  Created by Yuan on 2018/11/13.
//  Copyright © 2018年 YuanLiang's MacBook. All rights reserved.
//

#import <Photos/Photos.h>

NS_ASSUME_NONNULL_BEGIN

@interface PHAsset(YR)

- (NSData *)originImageJPEGData;

- (UIImage *)originImage;

@end

NS_ASSUME_NONNULL_END
