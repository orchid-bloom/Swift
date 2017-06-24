## 反射机制
## 命名空间
## 利用计算型属性抽取命名空间
//    返回名称空间
、、、
    func namespace() -> String {
    //        return Bundle.main.infoDictionary!["CFBundleName"] as? String ?? ""
    return infoDictionary!["CFBundleName"] as? String ?? ""
    }
 、、、
//计算型属性类似函数没有参数，有返回值,计算型数据更加直接

、、、
    var namespace : String{
    return infoDictionary!["CFBundleName"] as? String ?? ""
    }
 、、、
