//
//  ViewController.swift
//  Swift_懒加载
//
//  Created by Tema on 16/12/11.
//  Copyright © 2016年 tema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //延迟加载减少内存开销
    //lazy - 懒加载
    //延迟创建，不用解包
    //1.懒加载基本写法
    lazy var  label : DemoLabel = DemoLabel()
    
    
    //2.懒加载完整写法 1.提示不好，2.使用self注意循环引用
    lazy var  label2 = { ()->DemoLabel in
        var l = DemoLabel()
        
        //设置label的属性...
        
        return l
    }()
    
    
    lazy var label3 = { ()->DemoLabel in
        
        var l = DemoLabel()
        return l
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        label.center = view.center
        label.text = "宝宝不是大长腿"
        label.sizeToFit()
        label.textColor = UIColor.black
        
        view.addSubview(label2)
        label2.center = view.center
        label2.text = "宝宝不是大长腿"
        label2.sizeToFit()
        label2.textColor = UIColor.black
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

