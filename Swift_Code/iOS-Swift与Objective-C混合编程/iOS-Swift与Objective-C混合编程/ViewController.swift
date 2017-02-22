//
//  ViewController.swift
//  iOS-Swift与Objective-C混合编程
//
//  Created by tianXin on 2017/2/22.
//  Copyright © 2017年 tianXin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let help = BYSAppHelp()
        help.getAppFont()
        
        print(help)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

