//
//  Student.swift
//  Swift-构造函数
//
//  Created by Tema on 16/11/30.
//  Copyright © 2016年 陕西百益软件有限公司. All rights reserved.
//

import UIKit

class Student: Person {
    var age : Int
    
    init(name: String , age:Int) {
        self.age = age
        super.init(name: name);
    }
    
}
