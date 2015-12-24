//
//  GrabViewController.m
//  Trucker
//
//  Created by 梧桐树 on 15/12/9.
//  Copyright © 2015年 梧桐树. All rights reserved.
//

#import "GrabViewController.h"
#import "SliderViewController.h"
#import <MAMapKit/MAMapKit.h>

#define MHeight [UIScreen mainScreen].bounds.size.height
#define MWidth [UIScreen mainScreen].bounds.size.width

#define APIKey @"1a80361372488dcadea05b7f83a4d5e6"

@interface GrabViewController ()<MAMapViewDelegate>
{
    MAMapView *_mapView;
}
@property (nonatomic, strong) UIView *detailView;

@end

@implementation GrabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addAllViews];
    self.view.alpha = 0.5;
}

- (void)addAllViews
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.png"]];
    imageView.frame = self.view.frame;
    [self.view addSubview:imageView];
    
    UIButton *recieve_btn = [UIButton buttonWithType:UIButtonTypeSystem];
    recieve_btn.frame = CGRectMake(50, MHeight-60, MWidth-100, 30);
    [recieve_btn setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
    [recieve_btn setTitle:@"抢单" forState:UIControlStateNormal];
    [recieve_btn setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:recieve_btn];
    
    [self setupMapView];
}

// 显示地图
- (void)setupMapView
{
    [MAMapServices sharedServices].apiKey = APIKey;
    _mapView = [[MAMapView alloc] initWithFrame:CGRectMake(30, 100, MWidth - 60, 369)];
    _mapView.delegate = self;
    _mapView.compassOrigin = CGPointMake(_mapView.compassOrigin.x, 22);
    _mapView.scaleOrigin = CGPointMake(_mapView.scaleOrigin.x, 22);
    [self.view addSubview:_mapView];
    _mapView.mapType = MAMapTypeStandardNight;
    _mapView.logoCenter = CGPointMake(0, 0);
    _mapView.showsUserLocation = YES;
    _mapView.userTrackingMode = MAUserTrackingModeFollowWithHeading;
    [_mapView setZoomLevel:16.1 animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
