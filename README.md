# n-gram-tool
A tool to disassemble malicious code.(Based on n-gram model)

说明：一个提取恶意apk的n-gram特征的python工具

执行命令顺序 
python decompiling.py 
python make_csv.py 
python smali2feather.py 2 
python smali2feather.py 3 
python smali2feather.py 4 
python smali2feather.py 5

各模块、包的作用 
1.decompiling.py：（1）apk重命名（2）调用cmd命令，利用apktool反编译apk 
2.make_csv.py： （1）调用工具包中的smali解析模块，汇总smali （2）将各apk的smali字节码文件汇总到data.csv中 
3.smali2feather.py： 根据n-gram滑动窗口生成n-gram文件，存放各apk的特征。（n-gram的n作为参数输入在后面）

DependPackage包： 包括字节码字典（共7个指令集）、smali文件解析、特征字典等模块，用于作为上述模块的依赖。
