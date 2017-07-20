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
    // Add substring to main String
    func addString(string :String?) -> String {
        if (string == nil) || string?.characters.count == 0 {
            return self
        }
        return self + string!
    }
    // Remove particular sub string from main string
    func removeString(subString:String) -> String {
        if self.contains(subString) ,let range = self.range(of: subString) {
            return self.replacingCharacters(in: range, with: "");
        }
        return self
    }
    
    
    
    // If my string contains ony letters
    func containsOnlyLetters() -> Bool {
        let letterCharacterset = CharacterSet.letters.inverted
        return (((self as NSString).rangeOfCharacter(from: letterCharacterset)).location == NSNotFound)
    }
    // If my string contains only numbers
    func containsOnlyNumbers() -> Bool {
        let numbersCharacterSet = CharacterSet.init(charactersIn: "0123456789").inverted;
        return (((self as NSString).rangeOfCharacter(from: numbersCharacterSet)).location == NSNotFound)
    }
    // If my string contains letters and numbers
    func containsOnlyNumbersAndLetters() -> Bool {
        let numAndLetterCharSet = CharacterSet.alphanumerics.inverted
        return (((self as NSString).rangeOfCharacter(from: numAndLetterCharSet)).location == NSNotFound)
    }
    // If my string contains none letters and numbers
    func containsNoneNumbersAndLetters() -> Bool {
        let numAndLetterCharSet = CharacterSet.alphanumerics
        return (((self as NSString).rangeOfCharacter(from: numAndLetterCharSet)).location == NSNotFound)
    }
    //Whether it contains Chinese
    func containsChineseCharacters() -> Bool {
        
        for i in 0 ..< self.characters.count - 1 {
            let c = (self as NSString).character(at: i)
            if ( c > 0x4e00 && c < 0x9fff)  {
                return true
            }
        }
        return false
    }
    //Calculate the length of the string
    func containsOnlyChineseCharacters() -> Int {
        var number = 0
        guard self.characters.count > 0 else {return 0}
        for i in 0...self.characters.count - 1 {
            let c: unichar = (self as NSString).character(at: i)
            
            if (c >= 0x4E00) {
                number += 2
            }else {
                number += 1
            }
        }
        return number
    }
    // If my string is available in particular array
    func isIn(array : [AnyObject]) -> Bool {
        for objc in array {
            if objc is String ,let obj = objc as? String ,obj == self {
                return true
            }
        }
        return false
    }
    // Get String from array
    func getStringFromArray(array:[AnyObject]) -> String? {
        var tempArray :[String]?
        for objc in array {
            if objc is String ,let obj = objc as? String  {
                tempArray?.append(obj)
            }
        }
        return tempArray?.joined(separator: " ")
    }
    // Convert Array from my String
    func getArray() -> [String]? {
        return self.components(separatedBy: " ")
    }
    // Get My Application Version number
    func getMyApplicationVersion() -> String? {
        return Bundle.main.version
    }
    // Get My Application name
    func getMyApplicationName() -> String? {
        return Bundle.main.displayName
    }
    // Convert string to NSData
    func convertToData() -> Data? {
        return self.data(using: .utf8)
    }
    // Get String from NSData
    func getStringFromData(data:Data) -> String? {
        return String.init(data: data, encoding: .utf8)
    }
    // Is Valid Email
    func isValidEmail() -> Bool{
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTestPredicate = NSPredicate(format: "SELF MATCHES \(regex)")
        return emailTestPredicate.evaluate(with:self)
    }
    // Is Valid Phone
    func isVAlidPhoneNumber() -> Bool{
        let regex = "[235689][0-9]{6}([0-9]{3})?"
        let emailTestPredicate = NSPredicate(format: "SELF MATCHES \(regex)")
        return emailTestPredicate.evaluate(with:self)
    } // Is Valid Email
    func isVAlidMobelNumber() -> Bool{
        let regex = "[1][0-9]{10}"
        let emailTestPredicate = NSPredicate(format: "SELF MATCHES \(regex)")
        return emailTestPredicate.evaluate(with:self)
    } // Is Valid Email
    func isValidUrl() -> Bool{
        let regex = "(http|https)://((\\w)*|([0-9]*)|([-|_])*)+([\\.|/]((\\w)*|([0-9]*)|([-|_])*))+"
        let emailTestPredicate = NSPredicate(format: "SELF MATCHES \(regex)")
        return emailTestPredicate.evaluate(with:self)
    } // Is Valid Email
    func checkUsername() -> Bool{
        let regex = "^[A-Za-z0-9]{1,15}$"
        let emailTestPredicate = NSPredicate(format: "SELF MATCHES \(regex)")
        return emailTestPredicate.evaluate(with:self)
    }
}
