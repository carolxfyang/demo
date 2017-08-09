//
//  MainViewController.m
//  demo
//
//  Created by kfzx-zhouwz on 2017/8/9.
//  Copyright © 2017年 kokokod. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TODOViewController *todoVC = [[TODOViewController alloc]init];
    UINavigationController *todoNC = [[UINavigationController alloc] initWithRootViewController:todoVC];
    UITabBarItem *todoTBI = [[UITabBarItem alloc] initWithTitle:@"TODO" image:[UIImage imageNamed:@"todolist"] tag:0];
    todoNC.tabBarItem = todoTBI;
    
    
    BalanceViewController *balanceVC = [[BalanceViewController alloc]init];
    UINavigationController *balanceNC = [[UINavigationController alloc] initWithRootViewController:balanceVC];
    UITabBarItem *balanceTBI = [[UITabBarItem alloc] initWithTitle:@"Balance" image:[UIImage imageNamed:@"balance"] tag:1];
    balanceNC.tabBarItem = balanceTBI;
    
    
    
    [self setViewControllers:@[todoNC,balanceNC] animated:YES];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
