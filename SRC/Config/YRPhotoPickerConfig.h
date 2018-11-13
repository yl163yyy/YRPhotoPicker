//
//  YRPhotoPickerConfig.h
//  YRPhotoPicker
//
//  Created by Yuan on 2018/11/13.
//  Copyright © 2018年 YuanLiang's MacBook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Photos/Photos.h>
#import "YRPhotoPickerDef.h"

NS_ASSUME_NONNULL_BEGIN

@interface YRPhotoPickerConfig : NSObject

/**
 本次选择最大张数default 9
 */
@property (nonatomic, assign) NSInteger maxCount;

/**
 已选图片List（图片地址）
 */
@property (nonatomic, strong) NSArray *chosenAssetsIdentifiers;

/**
 是否直接打开第一个相册 default YES
 */
@property (nonatomic, assign) BOOL autoOpenAlbum;

/**
 completionHandler与shuoldCheckUpHandler中info是否需要携带图片data信息
 默认值false
 */
@property (nonatomic, assign) BOOL needImageData;

/**
 选择完成
 */
@property (nonatomic, copy) void(^completionHandler)(NSArray *info);

/**
 每次勾选前调用 return NO阻止勾选事件 默认YES
 **取消勾选时不调用
 */
@property (nonatomic, copy) BOOL(^shouldCheckUpHandler)(NSDictionary * _Nullable info);

/**
 勾选失败回调（shouldCheckUpHandler阻止的勾选事件不执行此回调）
 */
@property (nonatomic, copy) void(^checkFailedHandler)(PHAsset * _Nullable info, HYPhotoCheckFailedReason reason);

@end

NS_ASSUME_NONNULL_END
