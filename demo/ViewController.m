//
//  ViewController.m
//  demo
//
//  Created by icbc on 2017/8/1.
//  Copyright © 2017年 carolxfyang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIButton *left;

@property (strong, nonatomic) UIButton *right;

@property (strong, nonatomic) UITabBar *tab;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //初始化按钮，设置按钮类型
    self.left = [UIButton buttonWithType:UIButtonTypeSystem];
    self.right = [UIButton buttonWithType:UIButtonTypeSystem];
     /*
     Type:
     UIButtonTypeCustom = 0, // 自定义类型
     UIButtonTypeSystem NS_ENUM_AVAILABLE_IOS(7_0),  // 系统类型
     UIButtonTypeDetailDisclosure,//详细描述样式，圆圈中间加个i
     UIButtonTypeInfoLight, //浅色的详细描述样式
     UIButtonTypeInfoDark,//深色的详细描述样式
     UIButtonTypeContactAdd,//加号样式
     UIButtonTypeRoundedRect = UIButtonTypeSystem,   // 圆角矩形
     */
    
    //设置按钮位置和尺寸
    self.left.frame = CGRectMake(0, 690, 210, 50);
    
    self.right.frame = CGRectMake(400, 800, 210, 50);
    
    //设置按钮文字标题
    [self.left setTitle:@"记账" forState:UIControlStateNormal];
    
    [self.right setTitle:@"To Do" forState:UIControlStateNormal];
    /*
     State:前三个较为常用
     UIControlStateNormal //正常状态下
     UIControlStateHighlighted //高亮状态下，按钮按下还未抬起的时候
     UIControlStateDisabled  //按钮禁用状态下，不能使用
     UIControlStateSelected  //选中状态下
     UIControlStateApplication //当应用程序标志时
     UIControlStateReserved  //为内部框架预留
     */
    
    //设置按钮文字颜色
    [self.left setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [self.right setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    //设置背景图片（需要注意按钮类型最好为自定义，系统类型的会使图片变暗）
    //    [self.btn setImage:[UIImage imageNamed:@"tupian"] forState:UIControlStateNormal];
    
    //设置按钮文字大小
    self.left.titleLabel.font = [UIFont systemFontOfSize:20];
    
    self.right.titleLabel.font = [UIFont systemFontOfSize:20];
    
    //设按钮背景颜色
    self.left.backgroundColor = [UIColor grayColor];
    
    self.right.backgroundColor = [UIColor grayColor];
    
    //设置按钮文字阴影颜色
    [self.left setTitleShadowColor:[UIColor yellowColor] forState:UIControlStateNormal];
    
    [self.right setTitleShadowColor:[UIColor yellowColor] forState:UIControlStateNormal];
    
    //默认情况下，在按钮被禁用时，图像会被画的颜色深一些。要禁用此功能，可以将这个属性设置为NO
    self.left.adjustsImageWhenHighlighted = NO;
    
    self.right.adjustsImageWhenHighlighted = NO;
    
    //默认情况下，按钮在被禁用时，图像会被画的颜色淡一些。要禁用此功能，可以将这个属性设置为NO
    self.left.adjustsImageWhenDisabled = NO;
    
    self.right.adjustsImageWhenDisabled = NO;
    
    //下面的这个属性设置为yes的状态下，按钮按下会发光，这可以用于信息按钮或者有些重要的按钮
    self.left.showsTouchWhenHighlighted = YES;
    
    self.right.showsTouchWhenHighlighted = YES;
    
    //将控件添加到当前视图上
    [self.view addSubview:self.left];
    
    [self.view addSubview:self.right];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
