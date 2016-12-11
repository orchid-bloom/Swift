//
//  DemoLabel.swift
//  Swift_懒加载
//
//  Created by Tema on 16/12/11.
//  Copyright © 2016年 tema. All rights reserved.
//

import UIKit

class DemoLabel: UILabel {

    //XIB不会调用，纯代码调用
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadUI()
    }
    
    //开发XIB ，SB的入口
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        loadUI()
        //所以的UIView以及子类使用构造函数都要实现required init方法，以已提供两个通道
        //禁止XIB 和 SB使用本类
        fatalError("init(coder:) has not been implemented")
    }
    
    private func loadUI() {
        print("设置UI")
    }

}
