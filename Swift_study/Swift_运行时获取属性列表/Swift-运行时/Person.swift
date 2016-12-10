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
    //基础数据类型，在OC中没有可选，在运行时看不到，使用KVC就会崩溃
//    var age  : Int？
    var age  : Int = 0
    //private的属性，在运行时拿不到属性（可以拿到 ivar），同样使用KVC会崩溃
    private  var home : String?
    
    //使用运行时获取类的所有属性
    class func classProtry() -> [String] {
        var count:UInt32 = 0
        
        //1.获取类的属性列表使用运行时，返回属性数组，可选项
        let list = class_copyPropertyList(self, &count)
        print("\(count)")
        
//        //2遍历数组
//        for i in 0..<Int(count) {
//           
//            //3.根据下标获取属性
//            //objc_property_t?
//            let pro = list?[i]  //从可选的数组中，取对应的结果可能为 nil
//            
//            //4.获取属性名称的 C 语音字符串
//            //Int8 -> byte -> char => C字符串
//            //UnsafePointer<Int8>?
//            let cName = property_getName(pro!) //需要用属性的名称不能为空，需要强行解包
//            
//            //5.指针转换String 的字符串
//            let proStr = String(utf8String: cName!) //必须用C语言转换成String 不能为空
//            print(proStr);
//        }
        
        //2遍历数组
        for i in 0..<Int(count) {
            //使用guard 语法依次判断，只要有一个为空就不执行后续的代码
            guard let pro = list?[i],
                let  cName = property_getName(pro),
                let proName = String(utf8String: cName)
            else {
                //遍历下一个属性
                continue
            }
            //proName一定有值
            print(proName);
        }
        //3.释放C语言的对象
        free(list)
        return []
    }
}
