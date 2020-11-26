//
//  CellOne.m
//  TypeCellDemo
//
//  Created by huihui on 2020/11/26.
//

#import "CellOne.h"
#import "ModelOne.h"
@implementation CellOne
//- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
//    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
//        [self createSubViews];
//    }
//    return self;
//}
- (void)createSubViews{
    self.contentView.backgroundColor = [UIColor lightGrayColor];
    self.titleLab = [self createLabelWithColor:[UIColor redColor]];
    self.dateLab = [self createLabelWithColor:[UIColor blackColor]];
    self.dateLab.textAlignment = 2;
    self.redView = [self createViewWithColor:[UIColor greenColor]];
    [self.contentView addSubview:self.titleLab];
    [self.contentView addSubview:self.dateLab];
    [self.contentView addSubview:self.redView];

}
- (void)layoutSubviews{
    [super layoutSubviews];
    self.titleLab.frame = CGRectMake(0, 0, SCREEN_WIDTH, 30);
    self.dateLab.frame = CGRectMake(SCREEN_WIDTH - 150, 40, 100, 30);
    self.redView.frame = CGRectMake(10, 40, SCREEN_WIDTH - 165, self.contentView.frame.size.height - 50);
}
- (void)setModel:(id<ModelConfigProtocol>)model{
    ModelOne *currenModel = (ModelOne *)model;
    self.titleLab.text = currenModel.title;
    self.dateLab.text = currenModel.date;
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
