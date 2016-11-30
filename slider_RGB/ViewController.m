//
//  ViewController.m
//  slider_RGB
//
//  Created by Keje on 2016/11/30.
//  Copyright © 2016年 Keje. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+NotRGB.h"
#import "NSString+intTo16.h"


@interface ViewController ()
@property(nonatomic,strong)UISlider *redSlider;
@property(nonatomic,strong)UISlider *greenSlider;
@property(nonatomic,strong)UISlider *blueSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.redSlider = [[UISlider alloc] initWithFrame:CGRectMake(80, 100, 250, 100)];
    // 最小值方向滑动线的颜色
    self.redSlider.minimumTrackTintColor = [UIColor blueColor];
    self.redSlider.minimumValue = 0;
    // 最大值方向滑动线的颜色
    self.redSlider.maximumTrackTintColor = [UIColor magentaColor];
    self.redSlider.maximumValue = 1;
    // 滑动球的颜色
    self.redSlider.thumbTintColor = [UIColor brownColor];
    [self.view addSubview:self.redSlider];
    // 设置点击事件
    [self.redSlider addTarget:self action:@selector(click:) forControlEvents:UIControlEventValueChanged];
    
    self.blueSlider = [[UISlider alloc] initWithFrame:CGRectMake(80, 200, 250, 100)];
    self.blueSlider.minimumTrackTintColor = [UIColor blueColor];
    self.blueSlider.minimumValue = 0;
    self.blueSlider.maximumTrackTintColor = [UIColor magentaColor];
    self.blueSlider.maximumValue = 1;
    self.blueSlider.thumbTintColor = [UIColor brownColor];
    [self.blueSlider addTarget:self action:@selector(click:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.blueSlider];
    
    
    
    self.greenSlider = [[UISlider alloc] initWithFrame:CGRectMake(80, 300, 250, 100)];
    self.greenSlider.minimumTrackTintColor = [UIColor blueColor];
    self.greenSlider.minimumValue = 0;
    self.greenSlider.maximumTrackTintColor = [UIColor magentaColor];
    self.greenSlider.maximumValue = 1;
    self.greenSlider.thumbTintColor = [UIColor brownColor];
    [self.greenSlider addTarget:self action:@selector(click:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.greenSlider];
    
}

- (void)click:(UISlider *)slider{
    NSInteger x = (roundf(self.redSlider.value *255.f));
    NSInteger y = (roundf(self.greenSlider.value *255.f));
    NSInteger z = (roundf(self.blueSlider.value *255.f));
    
    
//    NSString *hexString = [NSString stringWithFormat:@"%@",[[NSString alloc] initWithFormat:@"%1lx",(long)x]];
    NSString *hexString = [NSString stringWithDecimal:x];
    
    NSLog(@"%ld---%ld---%ld---%@",(long)x,(long)y,(long)z,hexString);
    
//    self.view.backgroundColor = [[UIColor alloc] initWithRed:self.redSlider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:1];
    self.view.backgroundColor = [UIColor colorWithRed:x green:y blue:z];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
