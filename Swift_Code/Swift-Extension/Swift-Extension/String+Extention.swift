//
//  String+Extention.swift
//  weibo
//
//  Created by tianXin on 2017/3/13.
//  Copyright © 2017年 tianXin. All rights reserved.
//

import Foundation

extension String {

    /// Checking if String is Empty
    func isBlank() -> Bool {
        return self.removeWhiteSpacesFromString() == "" ? true:false
    }
    /// Checking if String is Empty or "(null)"
    func isValid() -> Bool {
        return (self.removeWhiteSpacesFromString() == "" || self == "(null)") ? false : true
    }
    /// remove white spaces from String
    func removeWhiteSpacesFromString() -> String {
     return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    /// Checking if String is empty or nil
    static func isValid(string:String?)->Bool {
        guard let string = string else {
            return false
        }
        return string.removeWhiteSpacesFromString().isValid()
    }
    /// Counts number of Words in String
    func countNumberOfWords() -> Int {
        let scanner = Scanner.init(string: self)
        let whiteSpace = CharacterSet.whitespaces
        var count = 0
        
        while  scanner.scanCharacters(from: whiteSpace, into: nil){
            count += count
        }
        return count
    }
    
    
    
    /// If string contains substring
    func contains(_ subString: String) -> Bool {
        return ((self as NSString).range(of: subString).location == NSNotFound) ? false : true
    }

    /// If my string starts with given string
    func isBegins(with string: String) -> Bool {
        return (hasPrefix(string)) ? true : false
    }
    
    ///  If my string ends with given string
    func isEndss(with string: String) -> Bool {
        return (hasSuffix(string)) ? true : false
    }
    
    //Replace particular characters in my string with new character
    func replaceCharcter(_ olderChar: String, withCharcter newerChar: String) -> String {
        return replacingOccurrences(of: olderChar, with: newerChar)
    }
    // Get Substring from particular location to given lenght
    func getSubstringFrom(_ begin: Int, to end: Int) -> String {
        var r = _NSRange()
        r.location = begin
        r.length = end - begin
        return (self as NSString).substring(with: r)
    }
}
