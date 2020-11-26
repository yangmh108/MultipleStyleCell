//
//  ViewController.m
//  TypeCellDemo
//
//  Created by huihui on 2020/11/26.
//

#import "ViewController.h"
#import "ModelOne.h"
#import "ModelTwo.h"
#import "ModelThree.h"
#import "BaseCell.h"
#import "CellOne.h"
#import "CellTwo.h"
#import "CellThree.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    
    self.dataArray = [[NSMutableArray alloc] init];
    ModelOne *model1 = [[ModelOne alloc] init];
    model1.title = @"第一种包第三季覅哦圣诞节覅苏打粉收到了佛教圣地开发看电视放";
    model1.date = @"2020-11-23";
    
    ModelTwo *model2 = [[ModelTwo alloc] init];
    
    ModelThree *model3 = [[ModelThree alloc] init];
    model3.title = @"第三种算了快递费多喝开水款到发货";
    model3.info = @"是的繁花似锦大富科技恶灵空间哦i恶妇哦为粉色的金风科技上课大嫁风尚的看法就是了解对方乐山大佛两三点客服水电费款式大非叫我i额u放家里科技；杜科举发撒两地分居蓝思科技大佛i危急时刻了";
    model3.date = @"2024-01-23";
    
    ModelTwo *model4 = [[ModelTwo alloc] init];

    ModelOne *model5 = [[ModelOne alloc] init];
    model5.title = @"第一种第二次";
    model5.date = @"2020-11-23";
    
    [self.dataArray addObject:model1];
    [self.dataArray addObject:model2];
    [self.dataArray addObject:model3];
    [self.dataArray addObject:model4];
    [self.dataArray addObject:model5];
    [self.tableView reloadData];

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    id<ModelConfigProtocol> model =self.dataArray[indexPath.row];

    return [model cellHeightWithindexPath:indexPath];
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 10)];
    footerView.backgroundColor = [UIColor brownColor];
    return footerView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    id<ModelConfigProtocol> model = self.dataArray[indexPath.row];
    BaseCell *cell = [tableView dequeueReusableCellWithIdentifier:[model cellReuseIdentifier]];
    if (!cell) {
        if (model.cellType == HomeCellTypeOne) {
            cell = [[CellOne alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[model cellReuseIdentifier]];
        }else if (model.cellType == HomeCellTypeTwo) {
            cell = [[CellTwo alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[model cellReuseIdentifier]];
        }else{
            cell = [[CellThree alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[model cellReuseIdentifier]];
        }
    }
    cell.model = model;
    return cell;
}
- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath

{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    id<ModelConfigProtocol> mdoel =self.dataArray[indexPath.row];
    [mdoel cellDidSelectRowAtIndexPath:indexPath other:nil];
    
}


#pragma mark -- getter
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
