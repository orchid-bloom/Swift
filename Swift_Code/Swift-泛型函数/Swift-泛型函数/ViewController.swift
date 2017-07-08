//
//  ViewController.swift
//  Swift-泛型函数
//
//  Created by Tema on 17/7/8.
//  Copyright © 2017年 tema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var Double1 = 0.24678
        var Double2 = 0.35346
        print("Double1:\(Double1)  Double2:\(Double2)")
        
        exchangeGeneyice(a: &Double1, b: &Double2)
        print("Double1:\(Double1)  Double2:\(Double2)")
    }

    /// 1、可以提供多个类型的类型，将他们都写在尖括号中，用逗号隔开，如<T，S>
    /// 2、一个类型参数一旦被指定，就可以用它来定义一些函数的参数类型，或者返回类型，函数会在被调用的时候被实际类型所替换
    /// 3、多数情况下，类型参数是一个具有一个描述性的名字
    /// 4、参数类型也是一种类型，它的命名方式跟类型命名一样采用驼峰式命名
    func exchangeGeneyice<T>(a:inout T , b:inout T) -> () {
        let temp = a
        a = b
        b = temp
    }
}

