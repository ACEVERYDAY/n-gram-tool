# *_* utf8 *_*
# 将代码名标准化
import os


def Name2Standard():
    virus_pth = r"F:\my_project\apk_sample\virus"  # 恶意代码样本存放路径
    st = 1
    for each_name in os.listdir(virus_pth):
        file_name = os.path.join(virus_pth, each_name)
        os.rename(file_name, virus_pth + '\\'+"vsample" + str(st))
        st += 1
    kind_pth = r"F:\my_project\apk_sample\kind"
    st = 1
    for each_name in os.listdir(kind_pth):
        file_name = os.path.join(kind_pth, each_name)
        os.rename(file_name, kind_pth + '\\'+"ksample" + str(st))
        st += 1