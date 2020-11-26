//
//  BaseCell.h
//  TypeCellDemo
//
//  Created by huihui on 2020/11/26.
//

#import <UIKit/UIKit.h>
#import "ModelConfigProtocol.h"

#define SCREEN_WIDTH     [UIScreen mainScreen].bounds.size.width

NS_ASSUME_NONNULL_BEGIN

@interface BaseCell : UITableViewCell
@property (nonatomic,strong) id <ModelConfigProtocol> model;
- (void)createSubViews;
- (UILabel *)createLabelWithColor:(UIColor *)color;
- (UIView *)createViewWithColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
