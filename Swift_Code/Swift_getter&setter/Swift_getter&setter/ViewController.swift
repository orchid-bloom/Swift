//
//  ViewController.swift
//  Swift_getter&setter
//
//  Created by Tema on 16/12/13.
//  Copyright © 2016年 tema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let  p = Person()
        
        //set
        p.name = "老王"
        //get
        print(p.name)
        
        print(p.title)
        
        print(p.title2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

