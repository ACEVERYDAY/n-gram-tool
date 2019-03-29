# *_* UTF-8 *_*
# 将汇总后的smali文件按method提取特征
import sys
import os
import DependPackage.each_feature as ef
import DependPackage.my_dict as md
n_gram = int(sys.argv[1])
print("n = ", n_gram)


class smali2feature(object):

    single_feature = []  # 记录单个sample的特征，用于后续的生成字典

    @classmethod
    def mark_each(cls, feature):  # 追加单个sample的特征
        cls.single_feature.append(feature)

    def __init__(self, gram):
        self.name = ""
        self.feature = ""
        self.all = []  # 存放整体的特征
        self.isVirus = ""
        self.n_gram = gram

    def select_feature(self, feature):
        al = ""
        temp = feature.split('|')
        for tt in temp:
            if len(tt) < self.n_gram:  # 筛除method内容小于n_gram的n的
                continue
            al += tt
        return al

    def read_csv(self):
        data_file = open(r"F:\my_project\n-gramTool\data.csv")
        isFirstLine = True
        while True:
            get_line = data_file.readline()
            if isFirstLine:
                isFirstLine = False
                continue
            if not get_line:
                break
            name, feature, isVirus = get_line.split(',')  # 这里的feature是单个sample的特征
            select = self.select_feature(feature)
            s = ef.EachFeature(select, n_gram)
            temp = s.create()
            smali2feature.mark_each(temp)
            self.feature += select # 生成n_gram的特征
        t = ef.EachFeature(self.feature, self.n_gram)
        self.all = t.create()  # 特征汇总完毕，存放于self.all
        self.write2csv()
        md.MyDic.my_ls = self.all
        k = md.MyDic(self.n_gram)
        k.make_dic(smali2feature.single_feature)

    def write2csv(self):
        data_base = r"F:\my_project\n-gramTool"
        name = str(n_gram) + r'_gram.csv'
        tt = os.path.join(data_base, name)
        file = open(tt, 'a')
        flag = False
        for i in self.all:
            if flag:
                file.write(r','+i)
                continue
            flag = True
            file.write(i)
        file.write('\n')
        file.close()


a = smali2feature(n_gram)
a.read_csv()

# r"F:\my_project\n-gramTool\data.csv"