# *_* UTF-8 *_*
import re
import os
import DependPackage.gather_smali as gs
import DependPackage.map as mp


class MakeCsv(object):

    firstCreate = True

    def __init__(self, smali_path, isVirus):
        self.file = open(r"F:\my_project\n-gramTool\data.csv", "a")
        self.isVirus = isVirus
        self.smali_path = smali_path
        if MakeCsv.firstCreate:
            self.file.write("ApkName,Feather,isVirus\n")
            MakeCsv.firstCreate = False

    def make_csv(self):

        for smali_name in os.listdir(self.smali_path):  # smali文件
            file = open(self.smali_path+"\\"+smali_name, "r")
            feature = ""
            temp = ""
            while True:
                get_line = file.readline()
                if not get_line:
                    break
                if not get_line.strip() or re.match(r"^\.method.*", get_line):
                    continue
                elif re.match(r"\.end.*", get_line):
                    feature += temp
                    feature += '|'
                    temp = ""
                else:
                    t = get_line.split()[0]  # 匹配遇到的每行第一个串
                    if t in mp.bytecode_map:  # 特征提取
                        temp += mp.bytecode_map[t]
            file.close()
            self.file.write("".join([smali_name, ",", feature, ",", str(self.isVirus), "\n"]))

    def close(self):
        self.file.close()


if __name__ == "__main__":
    gs.call_gather()
    base_path = r"F:\my_project\n-gramTool\smali\summary"
    apk_type = ['kind', 'virus']
    index = 0
    for tp in apk_type:
        path = os.path.join(base_path, tp)
        mk = MakeCsv(path, int(index))
        mk.make_csv()
        mk.close()
        index += 1
