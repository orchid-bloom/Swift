//
//  ViewController.swift
//  单例
//
//  Created by tianXin on 2017/2/20.
//  Copyright © 2017年 tianXin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sharedHelp = BYSHelp.shared
        
        let sharedApp  = BYSAppManager.shared
        
        print("sharedHelp",sharedHelp,"sharedApp",sharedApp);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

