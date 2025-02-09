# *_* coding:UTF-8 *_*
import re
import os

def readAndWrite(file, to_file):

    with open(file) as from_fp:
        fcontent = from_fp.read()  # .smali文件内容
    with open(to_file, "a") as to_fp:
        to_fp.write(fcontent)
    from_fp.close()


def recursion(from_file, to_file):

    # TODO(cui) 如果能匹配上，直接写入，避免无法进入循环
    if re.match(r".*\.smali$", from_file):
        readAndWrite(from_file, to_file)
        return

    for file in os.listdir(from_file):
        if re.match(r".*\.smali$", file):
            readAndWrite(from_file+'\\'+file, to_file)
            # return
        else:
            recursion(from_file +'\\'+ file, to_file)


def call_gather():
    bs_name = "F:\\my_project\\n-gramTool\\smali"  # apk反编译后的存放路径
    apk_type = ["\\kind", "\\virus"]  # apk类型

    for tp in apk_type:
        base_name = bs_name + tp
        sample = os.listdir(base_name)
        length = len(sample)
        current = 1
        for sample_name in sample:
            to_path = bs_name + "\\summary" + tp  # smali文件汇总要写入的路径
            for smali in os.listdir(base_name + '\\' + sample_name):
                if smali == "smali":
                    from_path = os.path.join(base_name, sample_name, smali)
                    recursion(from_path, to_path + "\\" + sample_name)
            print("%s 已完成" % sample_name)
            print("进度", current/length*100, "%")
            current += 1


if __name__ == "__main__":
    call_gather()
