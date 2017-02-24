//
//  ViewController.swift
//  Swift - 数组
//
//  Created by Tema on 16/10/19.
//  Copyright © 2016年 陕西百益软件有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo4()
    }
    
    //MARK ：--数组的定义
    func demo() {
        
        //OC中使用【】定义数组，swift 没有@
        //自动推到结果是string，数组中的都是string
        //OC中的指定类型是泛型
        let array = ["张三","呵呵","小鱼"]
        print(array)
        
        //【int】 代表数据是int 类型
        // swift - 基本数据类型不需要包装
        let array1 = [1,2,3,4,5,6]
        print(array1)
        
        //CG 结构性
        let p = CGPoint(x:10,y:10)
        //自动推导为CGPoint
        let array2 = [p]
        print(array2)
        
        //混合数组开发者不常用
        //如果属于类型不一样自动推断为[NSObject]
        //在swift 中还有一种数据类型【anyObject】->任意对象 比NSObject大一些
        //在swift 中一个类可以没有父类
        //在swift 中CG结构体需要包装
        let array3 = ["账上", 1, NSValue(cgPoint: p)] as [Any]
        print(array3)
    }
    
    func demo1(){
        
        let array = ["张三","呵呵","小鱼"]
        
        //1.按照下标遍历
        print("---按照下标遍历")
        for i in 0..<array.count{
            print(array[i])
        }
        
        //2.for in 遍历元素
        print("---for in 遍历元素")
        for s in array{
            print(s)
        }
        //3. enum block 同时遍历下标和元素
        print("---同时遍历下标和元素")
        for e in array.enumerated() {
            print("\(e.offset)\(e.element)")
        }
        
        //4.遍历下标和内容2
        print("--遍历下标和内容")
        for (e,n) in array.enumerated(){
            print("\(e)\(n)")
        }
        
        //5.反序遍历
        print("---反序遍历")
        for s in array.reversed() {
            print(s)
        }
        
        //6.反序内容下标遍历
//        for s in array.reversed().enumerated() {
//            print("\(s.offset)  \(s.element)")
//        }
        //正确的先枚举再反序
        print("--  ")
        for s in array.enumerated().reversed() {
            print("\(s.offset)  \(s.element)")
        }
        for (s,n) in array.enumerated().reversed() {
            print("\(s)  \(n)")
        }
    }
    
    func demo2(){
        var array = ["张三","呵呵","小鱼"]
        print(array)
        
        //追加
        array.append("长得")
        
        print(array)
        
        //修改
        array[0] = "adf"
        print(array)
        
        //删除
        array.remove(at: 0)
        
        //删除保留容量
        array.removeAll(keepingCapacity: true)
        
    }
    
    func demo3(){
        //定义数组
        var array :Int
        //初始化数组
       array = Int()
        print(array)
        
        
        //两句代码合并成一句
        //预分配可以提高效率
        //容量大小第一次是0  以后容量不够会*2累加
        /*
         0
         [0]  2
         [0, 1]  2
         [0, 1, 2]  4
         [0, 1, 2, 3]  4
         [0, 1, 2, 3, 4]  8
         [0, 1, 2, 3, 4, 5]  8
         [0, 1, 2, 3, 4, 5, 6]  8
         [0, 1, 2, 3, 4, 5, 6, 7]  8
         [0, 1, 2, 3, 4, 5, 6, 7, 8]  16
         */
        var array1 = [Int]()
        for i in 0..<9 {
            array1.append(i)
            print("\(array1)  \(array1.capacity)")
        }
    }
    
    //数组的合并
    //合并的数组类型必须要一致
    func demo4() {
        var array  = ["嘎嘎","哈哈","呵呵","私立","账上"]
        let array1 = ["打包","散了","1"]
        array += array1
        print(array)
    }
    
}

