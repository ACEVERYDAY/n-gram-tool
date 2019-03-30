class EachFeature(object):

    def __init__(self, feature, n_gram):
        self.feature = []
        self.temp = feature  # 列表
        self.n_gram = n_gram

    def create(self):
        """
        length = len(self.temp)-self.n_gram
        for i in range(length):
            temp = ""
            for j in range(i, i+self.n_gram):
                temp += self.temp[j]
            self.feature.append(temp)
        self.feature = list(set(self.feature))
        """
        for i in self.temp:
            length = len(i)-self.n_gram+1
            for st in range(0, length):
                self.feature.append(i[st:st+self.n_gram])
        self.feature = list(set(self.feature))
        return self.feature  # 返回的是n-gram的列表


if __name__ == "__main__":
    a = EachFeature("123456789", 3)
    a.create()
    t = str(a.feature)
    print(t)
