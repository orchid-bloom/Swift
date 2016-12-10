//
//  ViewController.swift
//  字典
//
//  Created by Tema on 16/10/23.
//  Copyright © 2016年 陕西百益软件有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
    }

    //字典的定义
    func demo1(){
        let dict :[String:AnyObject] = ["key1": 1234 as AnyObject , "key2":"djjs" as AnyObject , "key3": "哈哈" as AnyObject]
        print(dict)
    }
    
    //字典的遍历
    func demo2(){
        
    }
    
    //字典的增删改查
    func demo3(){
        
    }
    
    //字典的合并
    func demo4(){
        
    }
}

