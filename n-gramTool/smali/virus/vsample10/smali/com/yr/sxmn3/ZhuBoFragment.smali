.class public Lcom/yr/sxmn3/ZhuBoFragment;
.super Lcom/yr/sxmn3/BaseFragment;


# instance fields
.field a:Ljava/util/List;

.field private b:Lcom/yr/sxmn3/aw;

.field private c:Lcom/c/a/b/d;

.field private d:Landroid/app/Activity;

.field private e:Landroid/widget/GridView;

.field private f:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yr/sxmn3/BaseFragment;-><init>()V

    return-void
.end method

.method private a()Lcom/c/a/b/d;
    .locals 5

    const/16 v4, 0x1f4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->d:Landroid/app/Activity;

    const-string v1, "hlkk/cache"

    invoke-static {v0, v1}, Lcom/c/a/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/c/a/b/j;

    iget-object v2, p0, Lcom/yr/sxmn3/ZhuBoFragment;->d:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/c/a/b/j;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/c/a/b/j;->a(I)Lcom/c/a/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/a/b/j;->a()Lcom/c/a/b/j;

    move-result-object v1

    new-instance v2, Lcom/c/a/a/a/b/c;

    invoke-direct {v2}, Lcom/c/a/a/a/b/c;-><init>()V

    invoke-virtual {v1, v2}, Lcom/c/a/b/j;->a(Lcom/c/a/a/a/b/a;)Lcom/c/a/b/j;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/c/a/b/j;->a(II)Lcom/c/a/b/j;

    move-result-object v1

    sget-object v2, Lcom/c/a/b/a/h;->b:Lcom/c/a/b/a/h;

    invoke-virtual {v1, v2}, Lcom/c/a/b/j;->a(Lcom/c/a/b/a/h;)Lcom/c/a/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/a/b/j;->b()Lcom/c/a/b/j;

    move-result-object v1

    new-instance v2, Lcom/c/a/a/a/a/b;

    invoke-direct {v2, v0}, Lcom/c/a/a/a/a/b;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/c/a/b/j;->a(Lcom/c/a/a/a/b;)Lcom/c/a/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/b/j;->c()Lcom/c/a/b/h;

    move-result-object v0

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/b/g;->a(Lcom/c/a/b/h;)V

    new-instance v0, Lcom/c/a/b/f;

    invoke-direct {v0}, Lcom/c/a/b/f;-><init>()V

    invoke-virtual {v0, v3}, Lcom/c/a/b/f;->b(Z)Lcom/c/a/b/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/c/a/b/f;->c(Z)Lcom/c/a/b/f;

    move-result-object v0

    sget-object v1, Lcom/c/a/b/a/e;->e:Lcom/c/a/b/a/e;

    invoke-virtual {v0, v1}, Lcom/c/a/b/f;->a(Lcom/c/a/b/a/e;)Lcom/c/a/b/f;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/c/a/b/f;->a(Landroid/graphics/Bitmap$Config;)Lcom/c/a/b/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/c/a/b/f;->a(Z)Lcom/c/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/b/f;->a()Lcom/c/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->c:Lcom/c/a/b/d;

    iget-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->c:Lcom/c/a/b/d;

    return-object v0
.end method

.method static synthetic a(Lcom/yr/sxmn3/ZhuBoFragment;)Lcom/c/a/b/d;
    .locals 1

    invoke-direct {p0}, Lcom/yr/sxmn3/ZhuBoFragment;->a()Lcom/c/a/b/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yr/sxmn3/ZhuBoFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yr/sxmn3/ZhuBoFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "10001289"

    invoke-static {v0}, Lcom/upay/billing/sdk/Upay;->getInstance(Ljava/lang/String;)Lcom/upay/billing/sdk/Upay;

    move-result-object v0

    invoke-static {}, Lcom/yr/sxmn3/b/c;->a()Lcom/yr/sxmn3/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/yr/sxmn3/ZhuBoFragment;->d:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/yr/sxmn3/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yr/sxmn3/av;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/av;-><init>(Lcom/yr/sxmn3/ZhuBoFragment;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/upay/billing/sdk/Upay;->pay(Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/sdk/UpayCallback;)Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/yr/sxmn3/ZhuBoFragment;)Lcom/c/a/b/d;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->c:Lcom/c/a/b/d;

    return-object v0
.end method

.method static synthetic d(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->e:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic e(Lcom/yr/sxmn3/ZhuBoFragment;)Lcom/yr/sxmn3/aw;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->b:Lcom/yr/sxmn3/aw;

    return-object v0
.end method

.method static synthetic f(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {p0}, Lcom/yr/sxmn3/ZhuBoFragment;->g()Landroid/os/Bundle;

    const v0, 0x7f03000f

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0045

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->e:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->d:Landroid/app/Activity;

    const-string v2, "SHARED_PREFERENCE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->f:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/yr/sxmn3/aw;

    invoke-direct {v0, p0, v4}, Lcom/yr/sxmn3/aw;-><init>(Lcom/yr/sxmn3/ZhuBoFragment;Lcom/yr/sxmn3/aw;)V

    iput-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->b:Lcom/yr/sxmn3/aw;

    new-instance v0, Lcom/yr/sxmn3/as;

    invoke-direct {v0, p0}, Lcom/yr/sxmn3/as;-><init>(Lcom/yr/sxmn3/ZhuBoFragment;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/yr/sxmn3/ZhuBoFragment;->e:Landroid/widget/GridView;

    new-instance v2, Lcom/yr/sxmn3/at;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/at;-><init>(Lcom/yr/sxmn3/ZhuBoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/yr/sxmn3/BaseFragment;->a(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/yr/sxmn3/ZhuBoFragment;->d:Landroid/app/Activity;

    return-void
.end method
