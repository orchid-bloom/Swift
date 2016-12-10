//
//  ViewController.swift
//  Swift-构造函数
//
//  Created by Tema on 16/11/29.
//  Copyright © 2016年 陕西百益软件有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let p = Person(name:"丹丹")
//        print(p.name);
      
        let s = Student(name: "哈哈哈哈", age: 12)
        print("\(s.name) +++ \(s.age)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

