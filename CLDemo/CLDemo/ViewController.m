//
//  ViewController.m
//  CLDemo
//
//  Created by sks on 16/7/7.
//  Copyright © 2016年 CL. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+CLExtension.h"

#define DGRandomColor [UIColor colorWithRed:arc4random_uniform(256.0)/255.0 green:arc4random_uniform(256.0)/255.0 blue:arc4random_uniform(256.0)/255.0 alpha:1.0]

@interface ViewController ()
@property (nonatomic,strong) UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _textField = [[UITextField alloc]init];
    _textField.frame = CGRectMake(100, 100, 200, 25);
    [self.view addSubview:_textField];
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    _textField.placeholder = @"请输入手机号";
    
    
    _textField.placeholderColor =nil;
    _textField.backgroundColor = [UIColor grayColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _textField.placeholderColor = DGRandomColor;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
