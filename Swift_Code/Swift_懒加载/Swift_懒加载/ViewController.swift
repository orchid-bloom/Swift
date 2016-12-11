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
    lazy var  label : DemoLabel = DemoLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        label.center = view.center
        label.text = "宝宝不是大长腿"
        label.sizeToFit()
        label.textColor = UIColor.black
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

