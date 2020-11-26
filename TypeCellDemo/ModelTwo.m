//
//  ModelTwo.m
//  TypeCellDemo
//
//  Created by huihui on 2020/11/26.
//

#import "ModelTwo.h"

@implementation ModelTwo
- (HomeCellType)cellType{
    return HomeCellTypeTwo;
}

-(NSString *)cellReuseIdentifier{
    return @"CellTwoIdentifier";;
}
- (CGFloat)cellHeightWithindexPath:(NSIndexPath *)indexPath{
    return 150;
}
- (void)cellDidSelectRowAtIndexPath:(NSIndexPath *)indexPath other:(id)other{
    NSLog(@"点击了第二种cell");
}
@end
