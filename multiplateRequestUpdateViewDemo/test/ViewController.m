//
//  ViewController.m
//  test
//
//  Created by zhou on 15/11/5.
//  Copyright © 2015年 jeff.zhou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *view1;
@property (nonatomic, strong) UIView *view2;
@property (nonatomic, strong) UIView *view3;
@property (nonatomic, strong) UIView *view4;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view1 = [[UIView alloc] init];
    self.view1.frame = CGRectMake(0, 0, self.view.bounds.size.width, 0);
    self.view1.backgroundColor = [UIColor redColor];
    
    self.view2 = [[UIView alloc] init];
    self.view2.frame = CGRectMake(0, CGRectGetMaxY(self.view1.frame), self.view.bounds.size.width, 0);
    self.view2.backgroundColor = [UIColor yellowColor];

    self.view3 = [[UIView alloc] init];
    self.view3.frame = CGRectMake(0,CGRectGetMaxY(self.view2.frame),self.view.bounds.size.width, 0);
    self.view3.backgroundColor = [UIColor blueColor];
    
    self.view4 = [[UIView alloc] init];
    self.view4.frame = CGRectMake(0,CGRectGetMaxY(self.view3.frame),self.view.bounds.size.width,0);
    self.view4.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:self.view1];
    [self.view addSubview:self.view2];
    [self.view addSubview:self.view3];
    [self.view addSubview:self.view4];
    

   
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

}

- (void)updateView1:(CGFloat)height{
    CGRect rect = self.view1.frame;
    rect.size.height = height;
    self.view1.frame = rect;
    [self layoutViews];

}

- (void)updateView2:(CGFloat)height{
    CGRect rect = self.view2.frame;
    rect.size.height = height;
    self.view2.frame = rect;
    [self layoutViews];

    
}

- (void)updateView3:(CGFloat)height{
    CGRect rect = self.view3.frame;
    rect.size.height = height;
    self.view3.frame = rect;
    [self layoutViews];

    
}

- (void)updateView4:(CGFloat)height{
    CGRect rect = self.view4.frame;
    rect.size.height = height;
    self.view4.frame = rect;
    [self layoutViews];


    
}

- (void)layoutViews{
    
    self.view2.frame = CGRectMake(0, CGRectGetMaxY(self.view1.frame), self.view.bounds.size.width, self.view2.frame.size.height);
    self.view3.frame = CGRectMake(0, CGRectGetMaxY(self.view2.frame), self.view.bounds.size.width, self.view3.frame.size.height);
    self.view4.frame = CGRectMake(0, CGRectGetMaxY(self.view3.frame), self.view.bounds.size.width, self.view4.frame.size.height);
    
    
    
   
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
