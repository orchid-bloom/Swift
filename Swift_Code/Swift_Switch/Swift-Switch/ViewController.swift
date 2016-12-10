//
//  ViewController.swift
//  Swift-Switch
//
//  Created by Tema on 16/10/18.
//  Copyright © 2016年 陕西百益软件有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        demo(str: "7")
        demo1()
    }
    
    
    //swift 可以针对任意类型的分支，不仅仅局限于整数
    //swift 一般不需要break
    //swift 如果多值可以用 ','分隔
    //swift 所以得分支至少需要一条指令，如果什么都不干，才使用break
    func demo(str : String){
        switch str{
        case "9","10":
            print("优")
        default:
            print("一般")
        }
    }
    
    func demo1(){
        //在【0，10）之间循坏
        for i in 0..<10 {
            print(i)
        }
        print("------")
        //在【0，10】之间循坏
        for i in 0...10 {
            print(i)
        }

        for i in (0..<10).reversed(){
            print(i)
        }
        
        //CountableClosedRange
        let l = 0...10
        //CountableRange
        let d = 0..<10
        
        print("++++++++++++++")
        for i in (0...10).reversed(){
            print(i)
        }
        print("=========")
        for i in (0..<10).reversed() {
            print(i);
        }
    }
    
}

