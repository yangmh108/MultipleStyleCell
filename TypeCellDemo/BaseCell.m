//
//  BaseCell.m
//  TypeCellDemo
//
//  Created by huihui on 2020/11/26.
//

#import "BaseCell.h"

@implementation BaseCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createSubViews];
    }
    return self;
}
- (void)createSubViews{
    
}
- (void)setModel:(id)model{
}
- (UILabel *)createLabelWithColor:(UIColor *)color{
    UILabel *lab = [[UILabel alloc] init];
    lab.font = [UIFont systemFontOfSize:18];
    lab.textColor = color;
    return lab;
}
- (UIView *)createViewWithColor:(UIColor *)color{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = color;
    return view;
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
