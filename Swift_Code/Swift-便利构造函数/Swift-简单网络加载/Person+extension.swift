//
//  Person+extension.swift
//  Swift-简单网络加载
//
//  Created by Tema on 16/12/10.
//  Copyright © 2016年 tema. All rights reserved.
//

import UIKit

extension  UITextField { //Swift类别
    
    //便利构造函数创建对象简化代码
    convenience init?(placeholder:String , fontSize:UIFont) {
        
        self.init()
        self.placeholder = "0"
        self.font = fontSize
    }
}
