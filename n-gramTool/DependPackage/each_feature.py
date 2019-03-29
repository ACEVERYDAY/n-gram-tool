class EachFeature(object):

    def __init__(self, feature, n_gram):
        self.feature = []
        self.temp = feature
        self.n_gram = n_gram

    def create(self):
        length = len(self.temp)-self.n_gram
        for i in range(length):
            temp = ""
            for j in range(i, i+self.n_gram):
                temp += self.temp[j]
            self.feature.append(temp)
        self.feature = list(set(self.feature))
        return self.feature


if __name__ == "__main__":
    a = EachFeature("123456789", 3)
    a.create()
    t = str(a.feature)
    print(t)
