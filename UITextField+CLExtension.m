//
//  UITextField+CLExtension.m
//  CLDemo
//
//  Created by sks on 16/7/7.
//  Copyright © 2016年 CL. All rights reserved.
//

#import "UITextField+CLExtension.h"

static NSString *const CLplaceholderColorKey = @"placeholderLabel.textColor";

@implementation UITextField (CLExtension)

-(void)setPlaceholderColor:(UIColor *)placeholderColor
{
    //提前设置占位文字，提前创建placeholderLabel
    
    NSString *oldplaceholder = self.placeholder;
    self.placeholder = @" ";
    self.placeholder = oldplaceholder;
    //恢复默认占位文字颜色
    if (placeholderColor==nil)
    {
        placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    //设置占位文字颜色
    [self setValue:placeholderColor forKeyPath:CLplaceholderColorKey];
}

-(UIColor *)placeholderColor
{
    return [self valueForKey:CLplaceholderColorKey];
}


@end
