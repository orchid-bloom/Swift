//
//  ViewController.swift
//  swift-字符串的子串
//
//  Created by Tema on 16/10/19.
//  Copyright © 2016年 陕西百益软件有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo()
    }

    //建议用oc的字符串
    func demo(){
        let str = "大家一起飞"
        let ocStr = str as NSString
        let suStr = ocStr.substring(with: NSMakeRange(2, 2))
        print(suStr);
        
        
        let s1 = str.substring(from: "大".endIndex)
        print(s1)
        
        //一定取的到的范围
        guard let range = str.range(of: "一起") else {
            print("没有取到值")
            return;
        }
        //截取字符串
        let suStr1 = str.substring(with: range)
        print(suStr1)
        
    }
}

