.class Lcom/tencent/bugly/lejiagu/proguard/w$2;
.super Lcom/tencent/bugly/lejiagu/proguard/x;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/lejiagu/proguard/w;->a(Ljava/util/List;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/tencent/bugly/lejiagu/proguard/w;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/lejiagu/proguard/w;Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/aw;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;Lcom/tencent/bugly/lejiagu/proguard/t;Lcom/tencent/bugly/lejiagu/proguard/w;Ljava/util/List;)V
    .locals 7

    .prologue
    .line 181
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/proguard/w$2;->b:Lcom/tencent/bugly/lejiagu/proguard/w;

    iput-object p8, p0, Lcom/tencent/bugly/lejiagu/proguard/w$2;->a:Ljava/util/List;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/lejiagu/proguard/x;-><init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/aw;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;Lcom/tencent/bugly/lejiagu/proguard/t;Lcom/tencent/bugly/lejiagu/proguard/w;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 184
    invoke-super {p0}, Lcom/tencent/bugly/lejiagu/proguard/x;->a()V

    .line 185
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 186
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/w$2;->b:Lcom/tencent/bugly/lejiagu/proguard/w;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/w;->a(IJ)V

    .line 187
    return-void
.end method

.method protected a(ZILjava/lang/String;)V
    .locals 4

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/bugly/lejiagu/proguard/x;->a(ZILjava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w$2;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 194
    const-string v0, "up success do final"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 196
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/UserInfoBean;

    .line 197
    iput-wide v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/UserInfoBean;->f:J

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w$2;->b:Lcom/tencent/bugly/lejiagu/proguard/w;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/w;->a(Lcom/tencent/bugly/lejiagu/proguard/w;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/q;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/proguard/q;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/w$2;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/q;->e(Ljava/util/List;)V

    .line 201
    :cond_1
    return-void
.end method
