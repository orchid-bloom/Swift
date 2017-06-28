//
//  ViewController.swift
//  Swift-Subscript
//
//  Created by tianXin on 2017/6/28.
//  Copyright © 2017年 陕西百益软件有限公司. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var person = NumberOfPeople()
        
        person[0] = 40
        person[1] = 20
        person[2] = 10
        
        
        print("\(person[0])")
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


