//
//  Person.swift
//  Swift_getter&setter
//
//  Created by Tema on 16/12/13.
//  Copyright © 2016年 tema. All rights reserved.
//

import UIKit

class Person: NSObject {

    
     var _name : String?
     var name : String? {
        set {
            _name = newValue
        }
        get {
            return _name
        }
    }
    
    //只读属性的定义readonly
    var title :String {
        get {
            return _name ?? "" + "MR z"
        }
    }
    
    //只读属性的简写
    var title2 :String {
        return "title"
    }
    
    
}
