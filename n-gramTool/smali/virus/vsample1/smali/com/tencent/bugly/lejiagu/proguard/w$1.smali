.class Lcom/tencent/bugly/lejiagu/proguard/w$1;
.super Lcom/tencent/bugly/lejiagu/proguard/x;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/lejiagu/proguard/w;->a(Lcom/tencent/bugly/lejiagu/proguard/aw;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/bugly/lejiagu/proguard/w;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/lejiagu/proguard/w;Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/aw;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;Lcom/tencent/bugly/lejiagu/proguard/t;Lcom/tencent/bugly/lejiagu/proguard/w;I)V
    .locals 7

    .prologue
    .line 133
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/proguard/w$1;->b:Lcom/tencent/bugly/lejiagu/proguard/w;

    iput p8, p0, Lcom/tencent/bugly/lejiagu/proguard/w$1;->a:I

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
    .line 136
    invoke-super {p0}, Lcom/tencent/bugly/lejiagu/proguard/x;->a()V

    .line 137
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w$1;->b:Lcom/tencent/bugly/lejiagu/proguard/w;

    iget v1, p0, Lcom/tencent/bugly/lejiagu/proguard/w$1;->a:I

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/w;->a(IJ)V

    .line 138
    return-void
.end method
