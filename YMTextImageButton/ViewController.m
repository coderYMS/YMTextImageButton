//
//  ViewController.m
//  YMTextImageButton
//
//  Created by 余梦实 on 2017/6/13.
//  Copyright © 2017年 余梦石. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *showBtn;
@property (weak, nonatomic) IBOutlet UITextField *imageXTF;
@property (weak, nonatomic) IBOutlet UITextField *imageYTF;
@property (weak, nonatomic) IBOutlet UITextField *titleXTF;
@property (weak, nonatomic) IBOutlet UITextField *titleYTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.showBtn];
}

- (IBAction)defaultClick:(id)sender {
    _showBtn.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    _showBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [_showBtn setImageEdgeInsets:UIEdgeInsetsZero];
    [_showBtn setTitleEdgeInsets:UIEdgeInsetsZero];
}
- (IBAction)leftTextRightImgClick:(id)sender {
    _showBtn.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    _showBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [_showBtn setImageEdgeInsets:UIEdgeInsetsMake(0, 50, 0, 0)];
    [_showBtn setTitleEdgeInsets:UIEdgeInsetsMake(0, -40, 0, 0)];
}
- (IBAction)topMargin:(id)sender {
    _showBtn.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    _showBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [_showBtn setImageEdgeInsets:UIEdgeInsetsMake(10, 0, 0, 0)];
    [_showBtn setTitleEdgeInsets:UIEdgeInsetsMake(10, 0, 0, 0)];
}
- (IBAction)settedXY:(id)sender {
    _showBtn.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    _showBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [_showBtn setImageEdgeInsets:UIEdgeInsetsMake([_imageYTF.text floatValue], [_imageXTF.text floatValue], 0, 0)];
    [_showBtn setTitleEdgeInsets:UIEdgeInsetsMake([_titleYTF.text floatValue], [_titleXTF.text floatValue] - 60, 0, 0)];
}

- (UIButton *)showBtn {
    if (nil == _showBtn) {
        _showBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _showBtn.frame = CGRectMake(10, 40, 120, 100);
        [_showBtn setBackgroundColor:[UIColor cyanColor]];
        _showBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        [_showBtn setTitle:@"文字" forState:UIControlStateNormal];//字宽 30
        [_showBtn setImage:[UIImage imageNamed:@"btnIcon"] forState:UIControlStateNormal];//图片宽 60
    }
    return _showBtn;
}

@end
