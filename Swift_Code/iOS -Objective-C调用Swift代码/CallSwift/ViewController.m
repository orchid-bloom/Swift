//
//  ViewController.m
//  CallSwift
//
//  Created by tianXin on 2017/2/22.
//  Copyright © 2017年 tianXin. All rights reserved.
//

#import "ViewController.h"
#import "CallSwift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BYSAppHelp *help = [[BYSAppHelp alloc] init];
    [help callSwift];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
