//
//  namespace+extension.swift
//  反射机制
//
//  Created by tianXin on 2017/2/24.
//  Copyright © 2017年 tianXin. All rights reserved.
//

import Foundation

extension Bundle{
    
//    返回名称空间
//    func namespace() -> String {
////        return Bundle.main.infoDictionary!["CFBundleName"] as? String ?? ""
//        return infoDictionary!["CFBundleName"] as? String ?? ""
//    }
    //计算型属性类似函数没有参数，有返回值,计算型数据更加直接
    var namespace : String{
        return infoDictionary!["CFBundleName"] as? String ?? ""
    }
    
}
