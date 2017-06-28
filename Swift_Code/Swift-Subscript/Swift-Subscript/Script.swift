//
//  Script.swift
//  Swift-Subscript
//
//  Created by Tema on 17/6/28.
//  Copyright © 2017年 陕西百益软件有限公司. All rights reserved.
//

import Foundation
import UIKit

class NumberOfPeople {
    var principalNumber : Int = 0
    var teacherNumber   : Int = 0
    var studentNumber   : Int = 0
    
    subscript(type:Int)->Int {
        get {
            switch type {
            case 0: return principalNumber
            case 1: return teacherNumber
            case 2: return studentNumber
            default: return 0
            }
        }
        
        set {
            switch type {
            case 0:
                return principalNumber = newValue
            case 1:
            return teacherNumber = newValue
            case 2:
               return studentNumber = newValue
            default:
            return
            }
        }
    }
    
    
}
