//
//  ViewController.swift
//  Swift- 闭包
//
//  Created by Tema on 16/11/21.
//  Copyright © 2016年 陕西百益软件有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /*
    闭包
     1、提前准备好代码
     2、可以在需要的时候执行
     3、可以当做函数的参数传递
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //带参数的闭包
        //{形参列表 -> 返回值类型 in 实现代码}
        //需要一个关键字 in 分隔参数与实现代码
        let f = { (x: Int ,y: Int) -> Int in
         return x + y
        }
        let b1 = {(x: Int) -> () in
        print(x)
        }
        print(f(10,20))
        print(b1(100))

        //尾随闭包
        //如果函数的最后一个参数是闭包，函数的参数可以提前结束，最后参数直接使用{}包装闭包的我代码
        loadData { (result) in
            print(result)
        }
        
        loadData(completion: {(result) -> () in
           print(result)
        })
        
//        loadBlock {[weak self] in
//            print(self?.view)
//        }
        
        //swift [unowned self] 表示{}内的所有self都是 assign ，不会强引用但是如果对象释放，指针不会变化
        //如果对象被释放，调用就会发生野指针的问题
        loadBlock {[unowned self] in
            print(self.view)
        }
    }
    func loadBlock(comple:@escaping ()->()) -> () {
        DispatchQueue.global().async {
            print("异步执行\(Thread .current)")
            DispatchQueue.main.async {
                print("获取主线程\(Thread .current)")
                comple()
            }
        }
    }
    //GCD
    func loadData(completion: @escaping (_: [String])->()) -> (){
        DispatchQueue.global().async {
            print("异步执行\(Thread .current)")
            let array = ["头像","性别","年龄"]
            DispatchQueue.main.async {
               print("获取主线程\(Thread .current)")
                completion(array)
            }
        }
    }
    
    
}

