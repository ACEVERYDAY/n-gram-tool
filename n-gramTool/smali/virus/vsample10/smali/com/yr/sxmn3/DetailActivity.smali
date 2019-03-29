.class public Lcom/yr/sxmn3/DetailActivity;
.super Lcom/yr/sxmn3/BaseActivity;


# instance fields
.field private a:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yr/sxmn3/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/DetailActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yr/sxmn3/DetailActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "10001289"

    invoke-static {v0}, Lcom/upay/billing/sdk/Upay;->getInstance(Ljava/lang/String;)Lcom/upay/billing/sdk/Upay;

    move-result-object v0

    invoke-static {}, Lcom/yr/sxmn3/b/c;->a()Lcom/yr/sxmn3/b/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/yr/sxmn3/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yr/sxmn3/o;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/o;-><init>(Lcom/yr/sxmn3/DetailActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/upay/billing/sdk/Upay;->pay(Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/sdk/UpayCallback;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/yr/sxmn3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/DetailActivity;->setContentView(I)V

    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yr/sxmn3/DetailActivity;->a:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/yr/sxmn3/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INTENT_COLUMN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-ne v0, v2, :cond_1

    const-string v0, "\u4e58\u673a\u5e72\u4e86\u843d\u5165\u5395\u6240\u9677\u9631\u7684\u591a\u540d\u5236\u670d\u7f8e\u5973\u301012:10\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u4f50\u4f2f\u3086\u304d\u306a\u301013:30\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u4e30\u6ee1\u8272\u5973\u8bf1\u60d1\u301013:40\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u6c14\u8d28\u719f\u5987\u301013:18\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u597d\u8272\u7684\u65e5\u5e38102~\u3042\u307f\u306a01"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5fd7\u5411 0028 \u654f\u611f\u306b\u306a\u3063\u3066\u307e\u3059 \u771f\u8863\u301010:34\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5de8\u4e73\u306a\u6e05\u7d14 \u6e05\u6c34\u7406\u7d17\u301006:05\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5996\u8c54\u6df7\u4e82\u958b\u653eS\u7d1a\u5973\u512a\u6975\u597d\u8eab\u9ad4\u6065\u8fb1\u6a23\u5b50\u301013:22\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5de8\u4e73\u306a\u6e05\u7d14 \u6e05\u6c34\u7406\u7d17\u301029:01\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7f8e\u8173\uff01\u77ed\u8932\u5c3b\u7661\u5973\u9006\u6ce1\u599e\u301006:06\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u30a8\u30c3\u30c1\u306a4610 \u9752\u6728 \u7f8e\u611b\u301010:23\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u6c99\u53d1\u4e0a\u7ee7\u7eed\u62a0\u301020:34\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5982\u6b64\u7f8e\u5973\u5148\u63d2\u4e3a\u656c\u301005:00\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7121\u6599\u30a8\u30ed\u52d5\u753b has a hot rack and tight pussy\u301005:00\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7d14\u767d\u7f8e\u808c\u306e\u30a8\u30ed\u304a\u5b22\u69d8 \u9023\u7d9a\u4e2d\u51fa\u3057 \u9152\u4e95\u3082\u3082\u304b\u301007:59\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u5c31\u8fd9\u6837\u88ab\u4f60\u5f81\u670d\u301008:52\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u5077\u60c5\u301019:54\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "-\uff5e\u5c0f\u3055\u3044\u9803\u304b\u3089\u30b3\u30f3\u30d7\u30ec\u30c3\u30af\u30b9\u3060\u3063\u305fH\u30ab\u30c3\u30d7\uff5e \u5317\u5c71\u304b\u3093\u306a\u301020:00\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "-\u30e1\u30b9\u8c5a\u751f\u5f92\u306e\u7236\u89aa\u306b\u72af\u3055\u308c\u305f\u5973\u6559\u5e2b \u9577\u5d0e\u5b8f\u7f8e\u301010:02\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u4eba\u65ac\u308a\u6843\u5c3b \uff5e\u3082\u3061\u3082\u3061\u306e\u67d4\u3089\u304b\u3044\u304a\u5c3b\u3092\u5f04\u3076\uff5e\u30b5\u30ea\u301010:00\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5bbe\u9986\u53cc\u98de\u4e24\u719f\u5973\u301004:57\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "-\u30c1\u30f3\u30b3\u3092\u52a0\u3048\u3066\u30ac\u30c1\u30aa\u30ca\u30cb\u30fc\u3067\u901d\u304d\u307e\u304f\u308a\uff01\u4ed6\u4eba\u59bb\u8abf\u6559\u4e2d\uff01\u301010:01\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u5f3a\u4e0a\u826f\u5bb6\u301006:02\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u529e\u516c\u5ba4\u7684\u9ed1\u4e1dOL\u301015:03\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5bb6\u6559\u59d0\u59d0\u5728\u6211\u5e8a\u4e0a\u7761\u8457\u4e86,\u4e8e\u662f\u518d\u4e5f\u5fcd\u4e0d\u4f4f\u301025:38\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u89d2\u8272\u626e\u6f14\u7a7a\u59d0\uff0c\u6fc0\u767c\u6027\u6b32\u301010:06\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5f37\u5236\u8f2a\u5978\u7f8e\u5de8\u4e73\u59b9\u59b9\u7cfb\u9ed1\u7d72\u5076\u50cf\u30105:03\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5feb\u611fFUCK\u795e\u5947\u767d\u677f\u5c11\u5973\u5931\u7981\u5927\u91cf\u6f6e\u5439 \u7121\u6bdb\u7f8e\u5c11\u5973\u301011:27\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u8fd9\u4e2a\u8eab\u6750\u7684\u5973\u4eba\u6700\u723d\u301013:25\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u82b1\u94b1\u627e\u7684\u5c31\u662f\u5356\u529b\u301015:08\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u9694\u58c1\u5c11\u5987\u52fe\u5f15\u301025:01\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5403\u5927\u9ed1\u6728\u8033\u301031:22\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u719f\u7761\u7684\u5973\u53cb\u5f00\u5e72\u301012:19\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u548c\u5144\u5f1f\u4e00\u8d77\u53cc\u98de\u301012:08\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    new-instance v0, Lcom/yr/sxmn3/r;

    new-instance v2, Lcom/yr/sxmn3/p;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/p;-><init>(Lcom/yr/sxmn3/DetailActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/yr/sxmn3/r;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/yr/sxmn3/p;)V

    iget-object v1, p0, Lcom/yr/sxmn3/DetailActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "\u5927\u5c71\u7f8e\u540d\u5b50,\u6751\u702c\u6c99\u7eea\u91cc,\u7acb\u82b1\u5948\u592e,\u6728\u4e0b\u667a\u5b50\uff08\u7cbe\u9009\u7248\uff09"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u767c\u60c5\u5973\u548c\u53d4\u53d4\u7981\u65b7\u4e4b\u95dc\u4fc2\uff0c\u6975\u597d\u8272\u60c5\u8abf\u5473\u54c1~ \u7f8e\u91cc\u9ebb\u8863"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6deb\u4e82\u7684\u6709\u9322\u4eba\u5927\u91cf\u6f6e\u5439 \u512a\u6728\u3042"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7ecf\u5178\u73cd\u85cf\u591a\u5e74\u7684\u4eba\u59bb\u719f\u5973,\u820c\u6280\u98a8\u4fd7\u5b22\u7d1a\u7406\u5bb9\u5e2b\uff08\u7cbe\u9009\u7248\uff09"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5973\u5927\u751f\u5165\u5e97\u884c\u7aca\u5931\u98a8 \u30ea\u30a8[vip967]"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u4eba\u59bb\u8abf\u6559 \u6c96\u7530\u5343\u8cc0\u5b50[vip967]"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6700\u65b0Zipang_12537-\u25cb\u672c\u6728\u5186\u5149\u795e\u8a71 18\u6b73 \u5927\u597d\u5909\u614b\u5973\u7de8 [vip819]"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5973\u4f53\u62f7\u95ee\u7814\u7a76\u6240 \uff5e\u7a81\u51fb\uff01\u6012\u306e\u5973\u641c\u67e5\u5b98\u3001\u5b8c\u5168\u51cc\u8fb1\u62f7\u95ee\u306b\u9677\u843d"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7f8e\u4e3d\u53ef\u7231\u7684\u793c\u7269,\u677e\u5742\u5927\u8f85\u662f\u884c\u5f53\u4e2d\u5979\u7684\u5634"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u80d6\u4e4e\u4e4e\u7684\u5c0f\u9e21\u6cf0\u838e\u4eab\u6709\u516c\u9e21\u5728\u72d7\u7684\u98ce\u683c"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u4e1c\u65b9\u5728\u9e7f\u817f\u753b\u5eca\u9774\u5b50\u624b\u6307&\u62c9\u6492\u5927Belt-on\u7684\u519c\u5974"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6700\u65b01000\u4eba\u65ac 160201monami \u6deb\u4e82\u5984\u60f3\u6b32\u60c5~\u30e2\u30ca\u30df[22366]"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "G-Queen \u65e0\u6bdb\u5ba3\u8a00 \u4e00\u4e2a\u53ef\u7231\u7684\u59bb\u5b50? \u94c3\u6728"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u50b3\u8aac\u4e2d\u7684\u7f8e\u719f\u5973 \u8d64\u5742\u30eb\u30caLuna"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7a81\u7136\u6c7a\u5b9aAV\u51fa\u6f14  \u4e00\u30ce\u702c\u9e97\u82b1"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "CAPPV-022015_108 17\u540d\u5973\u512a\u4e4b\u7206\u4e73\u5973\u512a240\u5206\u9418"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u4e00\u672c\u9053 062013_612 \u7dba\u9e97\u4e4b\u984f\u964d\u767d\u8272\u66b4\u98a8\u96e8 \u6a2a\u5c71\u307f\u308c\u3044"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6700\u65b0heydouga-4030-1804-\u7be0\u7530\u3042\u3086\u307f -\u611f\u8b1d\u9451\u8cde\u4e4b\u65c5!! "

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u90fd\u5167\u306e\u67d0\u4f01\u696d\u53d7\u4ed8\u5b22"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "heyzo 0290 \u8272\u72fc\u4ff1\u6a02\u90e8\uff5e\u6deb\u4e82OL\u5e73\u6642\u7684\u6a02\u8da3 \u7dbe\u702c\u30c6\u30a3\u30a2\u30e9"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "MXGS-682\u7535\u51fb\u590d\u6d3b\uff01\uff01\u9ebb\u751f\u5e0c \u8089\u98df\u7cfb\u30a8\u30ed\u30b0\u30e9\u30de\u30e9\u30b9"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u52a0\u52d2\u6bd4 062513-368 \u771f\u5be6\u7684H\u8a71\u984c23 \u7460\u83dc"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5de5\u4f5c\u7684\u5730\u65b9\u5abd\u5abd\u6d3e\u9063\u54e1\u4eba\u59bb\u59d1\u5a18\u7de8\u8f2f:\u4e09\u4e0a\u6625\u5948"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6700\u65b0HEYZO 1074 \u7d20\u4eba\u5a18\u751f\u4e2d\u51fa~\u897f\u5ddd\u7d17\u83dc~22366"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Tokyo Hot n0933 \u7af9\u5167\u6c50\u97f3 3\u7a74\u4e32\u523a\u963f\u9f3b\u53eb\u559a"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "heyzo-0346-\u6975\u597d\u82d7\u689d\u8eab\u9ad4 \u767d\u767d\u5ae9\u5ae9\u9752\u7b4b\u82e5\u73fe \u5927\u7f8e\u5973\u96e8\u5bae\u7434\u97f3"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7ecf\u5178\u73cd\u85cf\u591a\u5e74\u7684\uff27\u7206\u4e73,\u6210\u4eba\u82ad\u857e\u821e\uff08\u6000\u65e7\u7248\uff09"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Carib-022115-813 \u5929\u7136\u7f8e\u5973\u514d\u8cbb\u642d\u4fbf\u8eca\uff01\u60e8\u906d\u5931\u8eab\u4e4b\u75db  \u897f\u91ce\u3042\u3053"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5de5\u4f5c\u7684\u5abd\u5abd\u624b\u6307\u5c16\u5152\u5de7\u5999\u7406\u9aee\u5e2b:\u867b\u5ddd\u3086\u3046\u308a(\u4e2d\u6587\u5b57\u5e55)"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u878d\u5316\u6211\u9ecf\u7cca\u7cca\u7684\u611b\u6db2\uff0c\u61a7\u61ac\u7684\u5bb6\u5ead\u6559\u5e2b- \u96e8\u5bae\u7434\u97f3"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u719f\u5973\u7cfb\u9f3b\u7956\u3010\u53cb\u7530\u771f\u5e0c\u3011\u5927\u5168\u96c6 \u6d77\u5916\u6d41\u51fa\u7248"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6700\u65b0ASIA\u5929\u570b 0619 \u6b32\u60c5\u3059\u308b\u654f\u611fOL~\u9577\u8c37\u5ddd \u68a8\u6c5f"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "pacopacomama \u4e0a\u7389\u7f8e\u719f\u5973\u521d\u64ae\u5f71\u6065\u59ff~\u68ee\u5c71\u611b\u5b50"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u990c\u98df\u725d \u91ce\u53e3\u83dc\u3005\u6728"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7ed3\u57ce\u82b1\u68a8 \u7f8e\u8bb2\u5e08\u5927\u6218\u4e09\u9ed1\u6c49\u5f3a\u5236\u6f6e\u55b7\u5c04 \u3010\u4e2d\u6587\u5b57\u5e55\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Tokyo-Hot n0780 \u85e4\u539f\u907c\u5b50 \u521d\u30a2\u30ca\u30eb!\u85e4\u539f\u907c\u5b502\u7a74\u58ca\u59e6"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v0, "95\u5e74\u7684\u5ae9\u59b9\u570b\u8a9e\u5c0d\u767d\u5b8c\u6574\u7248 \u7a0d\u5fae\u898b\u904e\u5e7e\u9762\u7684\u6f02\u4eae\u8a9e\u6587\u8001\u5e2b"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6d74\u8863\u56db\u5341\u8def\u5967\u6a23\u4e2d\u51fa~\u5c0f\u6797\u6c99\u5e0c[vip967]"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5e97\u9577\u63a8\u85a6\u4f5c\u54c1(SMD-131)S Model 131 \u5236\u670d\u9ed1\u9aee\u7f8e\u5973 : \u91d1\u4e95\u307f\u304a[22366]"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6700\u65b0 \u5728\u9152\u5e97\u88ab\u6f5c\u89c4\u5219\u7684\u6027\u611f\u5c11\u5987[22366]"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6700\u65b0\u719f\u5973\u5036\u697d\u90e8 6087-\u30c9S\u719f\u5973\u306eM\u7537 \u5f8c\u7de8 [vip819]"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u88ab\u6559\u7ec3\u5f3a\u4e0a\u301032:12\u3011 "

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7f8e\u719f\u5973\u4e0a\u53f8\u88ab\u4e0b\u5c5e\u4e71\u641e"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5ba2\u5ba4\u4e58\u52a1\u5458\u80a4\u767d\u903c\u7f8e\u9ed1\u4e1d\u7f8e\u5973\u88ab20\u4eba\u9675\u8fb1"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u5ba4\u5916\u62f7\u7740\u556a\u556a\u556a"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u76d1\u72f1\u4e2d\u7684\u51cc\u8fb1"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u4eba\u59bb\u7a7f\u7740\u9ed1\u4e1d\u88ab\u8c03\u6559"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u4eba\u5996\u8fd8\u9700\u8981\u5973\u4eba\u5417\uff1f"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7a7f\u4e0a\u8863\u670d\u5728\u505a\u592a\u6709\u624d\u4e86"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u4e9a\u88d4\u5973\u5b50\u4e0e\u5149\u5934\u7537\u7684\u7ef3\u827a"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u53d8\u6001\u6ccc\u5c3f\u5668\u79d1\u6027\u4ea4\u8bca\u6240 \u8c03\u6559\u613f\u671b \u53d8\u5f97\u8d64\u88f8\u7684M\u7684\u6027\u6b32\uff5e"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u53cc\u817f\u88ab\u6346\u7ed1\u7684\u5c11\u5987\u88ab\u9ed1\u4eba\u5f3a\u5236"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u798f\u5229\u3011\u5bf9\u4eba\u4f53\u4e86\u89e3\u900f\u5f7b\u7684\u5973\u533b\u751f\u5c31\u559c\u6b22\u81ea\u5df1\u73a9"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5987\u4ea7\u79d1\u533b\u751f\u7684\u7535\u6d41\u75c9\u631b\u7edd\u9876\u7eaf\u7cb9\u4e2d\u51fa01\u301019:54\u3011"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u3010\u539f\u521b\u3011\u6b27\u7f8e \u91d1\u9aea\u5929\u56fd \u8bf1\u306e\u5de8\u4e73BIG TITS AMY BROOKEVS\u65e5\u672c\u7537\u513f"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5b9d\u8d1d,\u516c\u53f8\u7684\u8eab\u4f53\u88ab\u7ed1\u7d27\u5728\u8c37\u4ed3\u548c\u60ac\u6d6e\u5728\u7a7a\u6c14\u4e2d\u7684\u6df1\u5589\u8ff7\u604b"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u80f8\u90e8\u4e30\u6ee1\u7684\u5973\u5b69\u4e0e\u808c\u8089\u7684\u5bb6\u4f19strapon\u65cb\u585e\u548c\u9a91\u7740\u8fea\u514b"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u9ea6\u8fea\u900a\u65af\u79d1\u7279\u7684\u5b8c\u7f8e\u7684\u8eab\u4f53\u7531\u5ba2\u4eba\u5728\u519b\u68b0\u5e93\u805a\u4f1a\u4e0a\u4f7f\u7528\u548c\u6ee5\u7528"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5927\u9678\u9ad8\u7d1a\u6703\u6240,\u60c5\u4fb6\u73a9\u9ed1\u7d72\u5236\u670d\u8a98\u60d1 \u89d2\u8272\u626e\u6f14 \u9802\u7d1a\u8a98\u60d1"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u539f\u672c\u8981\u4e0e\u5973\u53cb\u73a9sm\u7684\u7ef3\u7d22\u5148\u5c06\u597d\u53cb\u8001\u5a46\u6346\u8d77\u6765\u641e\u4e86"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6210\u719f\u7684\u5974\u96b6\u5973\u5b69\u5728\u5979\u7684\u819d\u76d6deepthroating\u65cb\u585e"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u4eba\u5996\u5e03\u9c81\u7eb3FACEFUCKS\u5979\u7684\u7537\u53cb\u89d2\u8d28"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5927\u9678\u97d3\u65e5\u6253\u70ae\u624b\u5fae\u62cd\u7cbe\u9078 Vol.26 \u7f8e\u81c0\u6975\u5ea6\u8a98\u60d1"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7ecf\u5178\u73cd\u85cf\u591a\u5e74\u7684\u5973\u540c\u5fd7\u795e\u7269OL\u767d\u66f8-\u5973\u767d\u9886"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u8001\u677f\u53eb\u5973\u79d8\u4e66\u5230\u529e\u516c\u5ba4\u5e2e\u4ed6\u6d88\u6d88\u706b"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u602a\u7656domina\u548c\u5979\u7684\u87ba\u6813\u5728\u70edfemdom\u89c6\u9891"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6700\u65b0Muramura.tv 013016_345-\u6346\u7d81\u5973\u5b50\u611f\u89ba\u826f\u597d \u5927\u585a\u306f\u306a"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7ecf\u5178\u73cd\u85cf\u591a\u5e74\u7684\u6c34\u5d8b\u3042\u305a\u307f \u9023\u8932\u896a\u7cfb\u5217\u4e4b\u82ad\u857e\u821e\u6559\u5ba4\uff08\u5267\u60c5\u7248\uff09"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7f8e\u9b54\u5973 \u6f02\u4eae\u7684\u63a5\u5f85 \u7f8e\u5c11\u5973\u7537\u4eba\u8a98\u60d1"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6700\u65b0Mesubuta 160129_1022_01-\u5973\u5b50\u6821\u751f\u7e1b\u4f53\u7f70 \u7be0\u539f\u7950\u5b50"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u8d85\u7f8e\u62a4\u58eb\u96fe\u5c9b\u5948\u6d25\u7f8e \u8fde\u533b\u751f\u90fd\u5fcd\u4e0d\u4f4f\u4e86"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
