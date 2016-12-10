//
//  ViewController.swift
//  Swift-简单网络加载
//
//  Created by Tema on 16/12/10.
//  Copyright © 2016年 tema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //URL的构造函数等于nil
        let url = URL(string: "http://www.baidu.com")
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
//            if(error != nil) {
//                print("网络加载失败")
//                return;
//            }
            guard  let data = data else {
                print("\(error)")
                return
            }
            
            let str = String(data: data, encoding: .utf8)
            print(str)
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

