//
//  ModelOne.m
//  TypeCellDemo
//
//  Created by huihui on 2020/11/26.
//

#import "ModelOne.h"

@implementation ModelOne
 
- (HomeCellType)cellType{
    return HomeCellTypeOne;
}

-(NSString *)cellReuseIdentifier{
    return @"CellOneIdentifier";;
}
- (CGFloat)cellHeightWithindexPath:(NSIndexPath *)indexPath{
    return 100;
}
- (void)cellDidSelectRowAtIndexPath:(NSIndexPath *)indexPath other:(id)other{
    NSLog(@"点击了第一种cell");
}
@end
