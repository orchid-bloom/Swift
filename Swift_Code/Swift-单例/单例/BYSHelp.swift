//
//  BYSHelp.swift
//  单例
//
//  Created by tianXin on 2017/2/20.
//  Copyright © 2017年 tianXin. All rights reserved.
//

import UIKit

 /* 一般单例*/
public final class BYSHelp: NSObject {

    public static let shared = BYSHelp()
    private  override init() {
    }
}

/* 格外作用单例*/
//public final class BYSAppManager :NSObject {
//    private static let _shared = BYSAppManager()
//    private override init() {
//        
//    }
//    
//    public static var shared : BYSAppManager {
//        get {
//            return _shared;
//        }
//    }
//}

public final class BYSAppManager :NSObject {
    private static let _shared = BYSAppManager()
    private override init() {
    }
    
    public static var shared : BYSAppManager {
        print("side effects here")
       // connect() // 获取单例的格外作用
        return _shared;
    }
}
