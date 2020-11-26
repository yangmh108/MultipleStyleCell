//
//  CellThree.m
//  TypeCellDemo
//
//  Created by huihui on 2020/11/26.
//

#import "CellThree.h"
#import "ModelThree.h"
@implementation CellThree

- (void)createSubViews{
    self.contentView.backgroundColor = [UIColor purpleColor];
    self.titleLab = [self createLabelWithColor:[UIColor redColor]];
    self.infoLab = [self createLabelWithColor:[UIColor greenColor]];
    self.infoLab.numberOfLines = 0;
    self.dateLab = [self createLabelWithColor:[UIColor blackColor]];
    [self.contentView addSubview:self.titleLab];
    [self.contentView addSubview:self.infoLab];
    [self.contentView addSubview:self.dateLab];

}
- (void)layoutSubviews{
    [super layoutSubviews];
    self.titleLab.frame = CGRectMake(0, 0, SCREEN_WIDTH, 30);
    self.dateLab.frame = CGRectMake(SCREEN_WIDTH - 120, 40, 100, 30);
    self.infoLab.frame = CGRectMake(0, 80, SCREEN_WIDTH, self.contentView.frame.size.height - 80);

}
-(void)setModel:(id<ModelConfigProtocol>)model{
    ModelThree *currenModel = (ModelThree *)model;
    self.titleLab.text = currenModel.title;
    self.dateLab.text = currenModel.date;
    self.infoLab.text = currenModel.info;
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
