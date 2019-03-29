# *_* coding:UTF-8 *_*
from copy import deepcopy


class MyDic(object):

    my_dc = {}
    my_ls = []

    def __init__(self, n_gram):
        data_base = r"F:\my_project\n-gramTool"
        name = str(n_gram) + r'_gram.csv'
        self.file = open(data_base + '\\' + name, "a")
        for i in MyDic.my_ls:  # 对my_dc进行初始化
            MyDic.my_dc[i] = 0

    def make_dic(self, feature):
        for ls in feature:
            temp = deepcopy(MyDic.my_dc)
            for i in ls:
                temp[i] = 1
            self.write2file(temp)
        self.close()

    def write2file(self, temp):
        flag = False
        for key in temp:
            if flag:
                self.file.write(',' + str(temp[key]))
                continue
            flag = True
            self.file.write(str(temp[key]))
        self.file.write('\n')

    def close(self):
        self.file.close()
