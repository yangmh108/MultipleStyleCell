//
//  ModelThree.m
//  TypeCellDemo
//
//  Created by huihui on 2020/11/26.
//

#import "ModelThree.h"

@implementation ModelThree
- (HomeCellType)cellType{
    return HomeCellTypeThree;
}

-(NSString *)cellReuseIdentifier{
    return @"CellThreeIdentifier";;
}
- (CGFloat)cellHeightWithindexPath:(NSIndexPath *)indexPath{
    return 200;
}
- (void)cellDidSelectRowAtIndexPath:(NSIndexPath *)indexPath other:(id)other{
    NSLog(@"点击了第三种cell");
}
@end
