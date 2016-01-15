//
//  ViewController.m
//  仿直播 音量 亮度调节
//
//  Created by 王洺轩 on 16/1/15.
//  Copyright © 2016年 王洺轩. All rights reserved.
//

#import "ViewController.h"
#import "wmx_GesturesClass.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    wmx_GesturesClass *wmx = [[wmx_GesturesClass alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:wmx];
    wmx.backgroundColor = [UIColor cyanColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
