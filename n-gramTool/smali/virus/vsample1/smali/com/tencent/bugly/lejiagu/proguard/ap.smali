.class public Lcom/tencent/bugly/lejiagu/proguard/ap;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method private static a()Lcom/tencent/bugly/lejiagu/proguard/ao;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/ao;

    invoke-direct {v0}, Lcom/tencent/bugly/lejiagu/proguard/ao;-><init>()V

    return-object v0
.end method

.method public static a(I)Lcom/tencent/bugly/lejiagu/proguard/aq;
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 11
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/ap;->a()Lcom/tencent/bugly/lejiagu/proguard/ao;

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 15
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/ap;->b()Lcom/tencent/bugly/lejiagu/proguard/an;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Lcom/tencent/bugly/lejiagu/proguard/an;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/an;

    invoke-direct {v0}, Lcom/tencent/bugly/lejiagu/proguard/an;-><init>()V

    return-object v0
.end method
