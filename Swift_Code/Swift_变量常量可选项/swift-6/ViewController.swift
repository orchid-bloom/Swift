//
//  ViewController.swift
//  swift-6
//
//  Created by Tema on 16/10/16.
//  Copyright © 2016年 陕西百益软件有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        demo()
//        demo1(x: 10, y: 20);
//        demo3();
        demo4(name: "老王", age: 22)
    }
    //常见错误，在解包时发现一个错误
    /**
     定义可选项用  '?'
     强行解包使用  '!'  准备计算
     */
    func demo(){
        
        //原始的可选项定义
        //Optional 是一个枚举 none 表示没有，some表示某一类值
        let x: Optional = 10;
     
        //简单的可选项定义
        // '?' 用来定义 y  是一个可选的 Int 类型，可能没有值，也可能是一个整数
        let y: Int? = 20 // = nil // = 20
        
        //输出Optional（10）表示这是一个可选值
        print(x)
        
        //常量y使用之前必须初始化
        print(y)
        
        //1>不同类型的值之间不能直接运算 如果没有值是nil 不是任何数据类型 ，不能参与运算
        //print(x + y)
        //2>'!' 强制解包 - 从可选值中强行获取对应的非空值，如果真的都是nil 运算就会崩溃
        //每一个'！'都要程序员负责
        //程序当中少用'!'
        
        print(x! + y!)

    }
    /**
    '??' 是一个简单的三目
     -- 如果有值使用值
     -- 如果没有值，使用 ?? 后面的值替代
     -- ?? 操作符优先级 最低  加（）
    */
    func demo1(x: Int?,y : Int?) {
        print((x ?? 0) + (y ?? 0));
        let name :String? = "老王"
         print((name ?? "") + "你好")
    }
    
    //MARK -- if  let/var  连接语法 用于判断值
    //不是单纯地 if
    func demo2(){
        let name : String? = "老王"
        let age  : Int? = 10
        
        //if let 连用判断对象是否为空，{}内一定有值，可以直接使用，不需要解析
        //if var 连接 可以修改{} 的数值
        if var oName = name,
        let oAge = age{
            //进入分支之后oName和oAge一定有值
            //oName 和 oAge 作用域在{}
            oName = "卜丹"
            print(oName+String(oAge))
        }else{
            print(name!+"或"+String(age!)+"为nil")
        }
    }
    
    //Mark -- guard  守卫/守护
    //guard 刚好与if let/var 相反
    func demo3() {
        
        let name : String? = "丹丹"
        let age  : Int?    = 22
        //守护一定有值没有值直接返回
        guard let oName = name,let oAge = age else {
            print("name  或  age   为空")
            return
        }
        
        //代码执行至此一定有值
        //通常判断是否有值进行逻辑处理
        //如果用if let 多包了一层分支  guard 降低分支
        //swift2.0 推出
        print(oName + String(oAge))
    }
    
    
    //guard let if let 使用同名的变量接受值，不需要解包
    //名字可以相同
    func demo4(name : String?, age : Int?){
        if let name = name , let age = age {
            //非空name ， age只在{}内有效
            print(name + String(age))
            print("--------")
        }
        
        guard let name = name ,let age =  age else {
            print("name 或 age 为空")
            return
        }
        print(name + String(age))
    }
}

