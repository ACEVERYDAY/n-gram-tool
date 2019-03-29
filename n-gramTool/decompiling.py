# 批量反编译
# *_* coding:UTF-8 *_*
import os
import subprocess
import to_standard as ts


def decompiling(from_path, to_path):

    files = os.listdir(from_path)
    total = len(files)

    for cnt, fileName in enumerate(files):
        fromPath = os.path.join(from_path, fileName)
        toPath = os.path.join(to_path, fileName)
        command = "apktool d " +  fromPath + " -o " + toPath  # 加壳会报错
        subprocess.call(command, shell=True)
        print("%s已完成" % fileName)
        print("进度：", (cnt + 1)/total * 100, "%")


if __name__ == "__main__":
    ts.Name2Standard()
    apk_type = ['kind', 'virus']
    base_path = r"F:\my_project\apk_sample"
    smaliPath = r"F:\my_project\n-gramTool\smali"
    for tp in apk_type:
        decompiling(base_path+'\\'+tp, smaliPath+'\\'+tp)
