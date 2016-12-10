//
//  Person.swift
//  Swift-运行时
//
//  Created by Tema on 16/12/10.
//  Copyright © 2016年 tema. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name : String?
    var age  : Int = 0
    var home : String?
    
    //使用运行时获取类的所有属性
    class func classProtry() -> [String] {
        var count:UInt32 = 0
        
        //1.获取类的属性列表使用运行时，返回属性数组，可选项
        let list = class_copyPropertyList(self, &count)
        print("\(count)")
        
        //2遍历数组
        for i in 0..<Int(count) {
           
            //3.根据下标获取属性
            //objc_property_t?
            let pro = list?[i]
            
            //4.获取属性名称的 C 语音字符串
            //Int8 -> byte -> char => C字符串
            //UnsafePointer<Int8>?
            let cName = property_getName(pro!)
            
            //5.指针转换String 的字符串
            let proStr = String(utf8String: cName!)
            print(proStr);
        }
        return []
    }
}
