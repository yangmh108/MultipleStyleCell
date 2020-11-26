//
//  CellTwo.m
//  TypeCellDemo
//
//  Created by huihui on 2020/11/26.
//

#import "CellTwo.h"

#import "ModelTwo.h"
@implementation CellTwo

- (void)createSubViews{
    
    self.redView = [self createViewWithColor:[UIColor redColor]];
    self.yellowView = [self createViewWithColor:[UIColor yellowColor]];

    [self.contentView addSubview:self.redView];
    [self.contentView addSubview:self.yellowView];

}
- (void)layoutSubviews{
    [super layoutSubviews];
   
    self.redView.frame = CGRectMake(10, 40, (SCREEN_WIDTH - 30)/2, self.contentView.frame.size.height - 80);
    self.yellowView.frame = CGRectMake(SCREEN_WIDTH/2, 40, (SCREEN_WIDTH - 30)/2, self.contentView.frame.size.height - 80);

}
-(void)setModel:(id<ModelConfigProtocol>)model{
    ModelTwo *currenModel = (ModelTwo *)model;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
