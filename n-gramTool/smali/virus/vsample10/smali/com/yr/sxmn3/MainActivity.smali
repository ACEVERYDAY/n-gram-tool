.class public Lcom/yr/sxmn3/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field private n:Lcom/yr/sxmn3/MViewPager;

.field private o:Landroid/support/v4/view/ae;

.field private p:Landroid/widget/TabWidget;

.field private q:[Ljava/lang/String;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:I

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/support/v4/view/bn;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "first"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "second"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "third"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->q:[Ljava/lang/String;

    iput v3, p0, Lcom/yr/sxmn3/MainActivity;->x:I

    new-instance v0, Lcom/yr/sxmn3/ac;

    invoke-direct {v0, p0}, Lcom/yr/sxmn3/ac;-><init>(Lcom/yr/sxmn3/MainActivity;)V

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->y:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/yr/sxmn3/ad;

    invoke-direct {v0, p0}, Lcom/yr/sxmn3/ad;-><init>(Lcom/yr/sxmn3/MainActivity;)V

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->z:Landroid/support/v4/view/bn;

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/MainActivity;)Lcom/yr/sxmn3/MViewPager;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->n:Lcom/yr/sxmn3/MViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/yr/sxmn3/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/yr/sxmn3/MainActivity;->x:I

    return-void
.end method

.method static synthetic b(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TabWidget;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->p:Landroid/widget/TabWidget;

    return-object v0
.end method

.method static synthetic i(Lcom/yr/sxmn3/MainActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->q:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public f()V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "SHARED_PREFERENCE"

    invoke-virtual {p0, v0, v2}, Lcom/yr/sxmn3/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "TRADE_ID"

    const-string v3, "null"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/yr/sxmn3/ag;

    invoke-direct {v1, p0, v0}, Lcom/yr/sxmn3/ag;-><init>(Lcom/yr/sxmn3/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->setContentView(I)V

    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->p:Landroid/widget/TabWidget;

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->p:Landroid/widget/TabWidget;

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/MainActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/MainActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/MainActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->r:Landroid/widget/ImageView;

    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->s:Landroid/widget/ImageView;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->t:Landroid/widget/ImageView;

    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/MViewPager;

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->n:Lcom/yr/sxmn3/MViewPager;

    new-instance v0, Lcom/yr/sxmn3/ah;

    invoke-virtual {p0}, Lcom/yr/sxmn3/MainActivity;->e()Landroid/support/v4/app/m;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yr/sxmn3/ah;-><init>(Lcom/yr/sxmn3/MainActivity;Landroid/support/v4/app/m;)V

    iput-object v0, p0, Lcom/yr/sxmn3/MainActivity;->o:Landroid/support/v4/view/ae;

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->n:Lcom/yr/sxmn3/MViewPager;

    iget-object v1, p0, Lcom/yr/sxmn3/MainActivity;->o:Landroid/support/v4/view/ae;

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/MViewPager;->setAdapter(Landroid/support/v4/view/ae;)V

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->n:Lcom/yr/sxmn3/MViewPager;

    iget-object v1, p0, Lcom/yr/sxmn3/MainActivity;->z:Landroid/support/v4/view/bn;

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/MViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bn;)V

    iget-object v0, p0, Lcom/yr/sxmn3/MainActivity;->p:Landroid/widget/TabWidget;

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    new-instance v0, Lcom/yr/sxmn3/ae;

    invoke-direct {v0, p0}, Lcom/yr/sxmn3/ae;-><init>(Lcom/yr/sxmn3/MainActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/yr/sxmn3/MainActivity;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yr/sxmn3/MainActivity;->x:I

    iget v0, p0, Lcom/yr/sxmn3/MainActivity;->x:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/example/tb/NYR;->addShortCut(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/yr/sxmn3/MainActivity;->finish()V

    iput v2, p0, Lcom/yr/sxmn3/MainActivity;->x:I

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "\u518d\u6309\u4e00\u6b21\uff0c\u9000\u51fa\u5e94\u7528"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yr/sxmn3/af;

    invoke-direct {v1, p0}, Lcom/yr/sxmn3/af;-><init>(Lcom/yr/sxmn3/MainActivity;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method
