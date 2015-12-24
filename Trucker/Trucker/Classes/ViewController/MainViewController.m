//
//  MainViewController.m
//  Trucker
//
//  Created by 梧桐树 on 15/12/4.
//  Copyright © 2015年 梧桐树. All rights reserved.
//

#import "MainViewController.h"
#import "GrabViewController.h"

#define MHeight [UIScreen mainScreen].bounds.size.height
#define MWight [UIScreen mainScreen].bounds.size.width

@interface MainViewController ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    [self addAllViews];
}

- (void)addAllViews
{
    UIButton *grab_btn = [UIButton buttonWithType:UIButtonTypeSystem];
    grab_btn.frame = CGRectMake(50, MHeight - 60, MWight-100, 30);
    [grab_btn setTitle:@"接单" forState:UIControlStateNormal];
    [grab_btn setBackgroundColor:[UIColor yellowColor]];
    [grab_btn addTarget:self action:@selector(grabAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:grab_btn];
}

- (void)grabAction:(UIButton *)sender
{
    GrabViewController *grabVC = [[GrabViewController alloc] init];
    [self presentViewController:grabVC animated:NO completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
