//
//  Person.swift
//  Swift-构造函数
//
//  Created by Tema on 16/11/29.
//  Copyright © 2016年 陕西百益软件有限公司. All rights reserved.
//

import UIKit

class Person: NSObject {
  
    var name:String;
    
//    override init() {
//        name = "张步丹"
//        super.init()
//    }
    
    init(name:String) {
        self.name = name;
    }
}
