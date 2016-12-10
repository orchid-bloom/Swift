//
//  Person.swift
//  Swift-简单网络加载
//
//  Created by Tema on 16/12/10.
//  Copyright © 2016年 tema. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name : String?
    var age : Int = 0
    
    //1.判断对象，如果条件满足才实例化对象，可以预防造成不必要的内存开支
    //2.简化对象的创建
    //3.本身不负责对象的创建和初始化工作
    
//    //3.0之后重载构造函数
//    init?(name:String , age :Int) {
//        
//        if age > 100 {
//            return nil
//        }
//        
//    }
    
//    3.0之前 重载构造函数
    /*
    1.便利构造函数允许返回nil
        ---正常的构造函数一定会创建对象
        ---判断给定的参数是否否和条件，如果条件不符合，直接返回nil,减少内存的开支
    2.只有便利构造函数才会调用 ”self.init“构造当前对象
     ---没有convenience关键字的函数是用来负责创建对象的，负责不负责创建对象
     ---如果要在便利构造函数中使用属性，必须在self.init调用之后才能使用
    */
  convenience  init?(name : String , age :Int) {
    
    if age > 100 {
            return nil
        }
    
    //实例化当前对象
    self.init()
    //在self访问属性之前调用 self.init 方法
    //执行在此之前，self 才允许被访问，才能访问对象的属性
    self.name = name;
    }
    
}
