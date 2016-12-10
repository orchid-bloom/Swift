//
//  ViewController.m
//  Swift- 闭包
//
//  Created by Tema on 16/11/29.
//  Copyright © 2016年 陕西百益软件有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //MRC时的 assign 当时没weak,MRC中使用assign不会引起循环引用，对象是否指针不变，继续访问出现野指针
    //ARC下的weak是一个观察者当对象释放，会自动设置为nil,更加的安全
    //weak的效率略低于assign
    __unsafe_unretained typeof(self) weakSelf = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
