.class public Lcom/yr/sxmn3/HomePageFragment;
.super Lcom/yr/sxmn3/BaseFragment;


# instance fields
.field private Y:Landroid/widget/ImageView;

.field private Z:Landroid/widget/ImageView;

.field private a:Lcom/yr/sxmn3/Image3DSwitchView;

.field private aa:Landroid/widget/ImageView;

.field private ab:Landroid/widget/ImageView;

.field private ac:Landroid/widget/ImageView;

.field private ad:Landroid/widget/ImageView;

.field private ae:Landroid/widget/ImageView;

.field private af:Landroid/widget/ImageView;

.field private ag:Landroid/widget/ImageView;

.field private ah:Landroid/widget/ImageView;

.field private ai:Lcom/c/a/b/d;

.field private aj:Landroid/app/Activity;

.field private ak:Ljava/util/List;

.field private al:Ljava/util/List;

.field private am:Ljava/util/List;

.field private an:Landroid/content/SharedPreferences;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/widget/TextView;

.field private aq:Landroid/widget/TextView;

.field private ar:Landroid/widget/FrameLayout;

.field private as:Landroid/view/View;

.field private at:Landroid/view/View;

.field private au:Landroid/view/View;

.field private av:Landroid/view/View;

.field private aw:Landroid/view/View;

.field private b:Lcom/yr/sxmn3/w;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;


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

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->aj:Landroid/app/Activity;

    const-string v1, "hlkk/cache"

    invoke-static {v0, v1}, Lcom/c/a/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/c/a/b/j;

    iget-object v2, p0, Lcom/yr/sxmn3/HomePageFragment;->aj:Landroid/app/Activity;

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

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ai:Lcom/c/a/b/d;

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ai:Lcom/c/a/b/d;

    return-object v0
.end method

.method static synthetic a(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;
    .locals 1

    invoke-direct {p0}, Lcom/yr/sxmn3/HomePageFragment;->a()Lcom/c/a/b/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yr/sxmn3/HomePageFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/HomePageFragment;->ak:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/yr/sxmn3/HomePageFragment;->a(ZIILandroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method private a(ZIILandroid/content/Intent;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x5

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ak:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ak:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/mp4"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p4}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->al:Ljava/util/List;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->al:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->al:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/mp4"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p4}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->am:Ljava/util/List;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->am:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->am:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/mp4"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p4}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v0, "INTENT_COLUMN"

    invoke-virtual {p5, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ak:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/yr/sxmn3/HomePageFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/HomePageFragment;->al:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/yr/sxmn3/HomePageFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/HomePageFragment;->am:Ljava/util/List;

    return-void
.end method

.method static synthetic d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ai:Lcom/c/a/b/d;

    return-object v0
.end method

.method static synthetic e(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->al:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->Y:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->Z:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->aa:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ac:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic o(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->am:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ad:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic q(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ae:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic r(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->af:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic s(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ag:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic t(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ah:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic u(Lcom/yr/sxmn3/HomePageFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->aj:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic v(Lcom/yr/sxmn3/HomePageFragment;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->an:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic w(Lcom/yr/sxmn3/HomePageFragment;)Lcom/yr/sxmn3/Image3DSwitchView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->a:Lcom/yr/sxmn3/Image3DSwitchView;

    return-object v0
.end method

.method static synthetic x(Lcom/yr/sxmn3/HomePageFragment;)Lcom/yr/sxmn3/w;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->b:Lcom/yr/sxmn3/w;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/16 v8, 0xa

    const v7, 0x44098000    # 550.0f

    const/4 v6, 0x0

    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v4, 0x43ac0000    # 344.0f

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {p0}, Lcom/yr/sxmn3/HomePageFragment;->g()Landroid/os/Bundle;

    const v0, 0x7f03000e

    invoke-virtual {p1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->aj:Landroid/app/Activity;

    const-string v1, "SHARED_PREFERENCE"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->an:Landroid/content/SharedPreferences;

    const v0, 0x7f0a0027

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/Image3DSwitchView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->a:Lcom/yr/sxmn3/Image3DSwitchView;

    const v0, 0x7f0a002e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a002f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a0031

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ao:Landroid/widget/TextView;

    const v0, 0x7f0a0038

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ap:Landroid/widget/TextView;

    const v0, 0x7f0a003f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->aq:Landroid/widget/TextView;

    const v0, 0x7f0a0026

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ar:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0028

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->as:Landroid/view/View;

    const v0, 0x7f0a0029

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->at:Landroid/view/View;

    const v0, 0x7f0a002a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->au:Landroid/view/View;

    const v0, 0x7f0a002b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->av:Landroid/view/View;

    const v0, 0x7f0a002c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->aw:Landroid/view/View;

    new-instance v0, Lcom/yr/sxmn3/v;

    invoke-direct {v0, p0, v6}, Lcom/yr/sxmn3/v;-><init>(Lcom/yr/sxmn3/HomePageFragment;Lcom/yr/sxmn3/v;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->as:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->at:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->au:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->av:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->aw:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0033

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a0032

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a0034

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->g:Landroid/widget/ImageView;

    const v0, 0x7f0a0035

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a0036

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->i:Landroid/widget/ImageView;

    const v0, 0x7f0a003a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->Y:Landroid/widget/ImageView;

    const v0, 0x7f0a0039

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->Z:Landroid/widget/ImageView;

    const v0, 0x7f0a003b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->aa:Landroid/widget/ImageView;

    const v0, 0x7f0a003c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ab:Landroid/widget/ImageView;

    const v0, 0x7f0a003d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ac:Landroid/widget/ImageView;

    const v0, 0x7f0a0041

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ad:Landroid/widget/ImageView;

    const v0, 0x7f0a0040

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ae:Landroid/widget/ImageView;

    const v0, 0x7f0a0042

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->af:Landroid/widget/ImageView;

    const v0, 0x7f0a0043

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ag:Landroid/widget/ImageView;

    const v0, 0x7f0a0044

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ah:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v7}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->Y:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v7}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->aa:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ab:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ac:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ad:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v7}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ae:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->af:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ag:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ah:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/view/View;FF)V

    new-instance v0, Lcom/yr/sxmn3/x;

    invoke-direct {v0, p0, v6}, Lcom/yr/sxmn3/x;-><init>(Lcom/yr/sxmn3/HomePageFragment;Lcom/yr/sxmn3/x;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->Y:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->aa:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->ab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->ac:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->ad:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->ae:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->af:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->ag:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yr/sxmn3/HomePageFragment;->ah:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v0, ""

    const-string v0, ""

    if-ge v1, v8, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-ge v3, v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/yr/sxmn3/HomePageFragment;->ao:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6700\u540e\u66f4\u65b0\u65e5\u671f:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/yr/sxmn3/HomePageFragment;->ap:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6700\u540e\u66f4\u65b0\u65e5\u671f:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/yr/sxmn3/HomePageFragment;->aq:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6700\u540e\u66f4\u65b0\u65e5\u671f:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->ar:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/yr/sxmn3/s;

    invoke-direct {v1, p0}, Lcom/yr/sxmn3/s;-><init>(Lcom/yr/sxmn3/HomePageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yr/sxmn3/t;

    invoke-direct {v1, p0, v0}, Lcom/yr/sxmn3/t;-><init>(Lcom/yr/sxmn3/HomePageFragment;Landroid/os/Handler;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/yr/sxmn3/w;

    invoke-direct {v0, p0, v6}, Lcom/yr/sxmn3/w;-><init>(Lcom/yr/sxmn3/HomePageFragment;Lcom/yr/sxmn3/w;)V

    iput-object v0, p0, Lcom/yr/sxmn3/HomePageFragment;->b:Lcom/yr/sxmn3/w;

    new-instance v0, Lcom/yr/sxmn3/u;

    invoke-direct {v0, p0}, Lcom/yr/sxmn3/u;-><init>(Lcom/yr/sxmn3/HomePageFragment;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-object v2

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/yr/sxmn3/BaseFragment;->a(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/yr/sxmn3/HomePageFragment;->aj:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 5

    const/high16 v4, 0x44340000    # 720.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    cmpl-float v1, p2, v3

    if-eqz v1, :cond_0

    div-float v1, p2, v4

    sget v2, Lcom/yr/sxmn3/n;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    cmpl-float v1, p3, v3

    if-eqz v1, :cond_1

    div-float v1, p3, v4

    sget v2, Lcom/yr/sxmn3/n;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
