//
//  BaseModel.m
//  TypeCellDemo
//
//  Created by huihui on 2020/11/26.
//

#import "BaseModel.h"

@implementation BaseModel
- (HomeCellType)cellType{
    return 0;
}
- (NSString *)cellReuseIdentifier{
    return @"";
}
- (CGFloat)cellHeightWithindexPath:(NSIndexPath *)indexPath{
    return 0.0;
}

- (void)cellDidSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath other:(id _Nullable)other {
    return;
}

@end
