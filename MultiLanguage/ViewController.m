//
//  ViewController.m
//  MultiLanguage
//
//  Created by fuzhaurui on 2017/1/5.
//  Copyright © 2017年 fuzhaurui. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Extension.h"

@interface ViewController ()
@property(strong ,nonatomic)UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addButton];

}


- (void)addButton
{
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 200, 50)];
    self.label.text = @"00000000";
    [self.view addSubview:self.label];
    
    for (int i = 0; i<4; i++) {
        
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(50, 300+i*50, 200, 45)];
        
        if (i == 0) {
            [button setTitle:@"切换     英文" forState:UIControlStateNormal];
        }
        else if (i == 1)
        {
            [button setTitle:@"切换     中文" forState:UIControlStateNormal];
        }
        else if (i == 2)
        {
            [button setTitle:@"切换     日文" forState:UIControlStateNormal];
        }
        else if (i == 3)
        {
            [button setTitle:@"切换 匈牙利" forState:UIControlStateNormal];
        }
        button.titleLabel.textColor = [UIColor whiteColor];
        button.backgroundColor = [UIColor blueColor];
        button.tag = 1000+i;
        [button addTarget:self action:@selector(buttonActon:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        
    }
    
    
}
- (void)buttonActon:(UIButton *)sender
{
    
    if (sender.tag == 1000) {
        
        self.label.text = [@"test" showMultiLanguageText:@"Base"];
        
    }
    else if (sender.tag == 1001) {

        self.label.text = [@"test" showMultiLanguageText:@"zh-Hans"];
        
    }
    else if (sender.tag == 1002) {
        
        self.label.text = @"test".showDefaultMultiLanguageText;
        
    }
    
    else if (sender.tag == 1003) {
        
        self.label.text = [@"test" showMultiLanguageText:@"hu"];
        
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
