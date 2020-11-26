//
//  ModelConfigProtocol.h
//  TypeCellDemo
//
//  Created by huihui on 2020/11/26.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, HomeCellType) {
    
    HomeCellTypeOne =0,
    
    HomeCellTypeTwo,
    
    HomeCellTypeThree,
    
    HomeCellTypeFourl,
    
};


@protocol ModelConfigProtocol <NSObject>
/**

获取 cell 的复用标识

@return 复用标识

*/

- (nullable NSString*)cellReuseIdentifier;
/**

获取 cell 的类型

@return cell 的类型

*/

- (HomeCellType )cellType;

/**
 获取 cell 的高度

 @param indexPath indexPath

 @return 高度

 */

 - (CGFloat)cellHeightWithindexPath:(NSIndexPath*)indexPath;

 /**

  cell 点击

  @param indexPath indexPath

  @param other 其它对象

  */

  - (void)cellDidSelectRowAtIndexPath:(NSIndexPath*)indexPath other:(_Nullable id)other;

 @end

NS_ASSUME_NONNULL_END
