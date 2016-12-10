###基础数据类型，在OC中没有可选，在运行时看不到，使用KVC就会崩溃
###private的属性，在运行时拿不到属性（可以拿到 ivar），同样使用KVC会崩溃
###使用guard 语法依次判断，只要有一个为空就不执行后续的代码
</code>

var count:UInt32 = 0
let list = class_copyPropertyList(self, &count)
for i in 0..<Int(count) {
//使用guard 语法依次判断，只要有一个为空就不执行后续的代码
guard let pro = list?[i],
let  cName = property_getName(pro),
let proName = String(utf8String: cName)
else {s
//遍历下一个属性
continue
}
//proName一定有值
print(proName);
}
//3.释放C语言的对象
free(list)

</code>
