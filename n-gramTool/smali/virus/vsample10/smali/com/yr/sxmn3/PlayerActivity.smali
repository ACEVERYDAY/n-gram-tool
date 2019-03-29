.class public Lcom/yr/sxmn3/PlayerActivity;
.super Lcom/yr/sxmn3/BaseActivity;


# instance fields
.field a:Landroid/widget/VideoView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Lcom/yr/sxmn3/a/k;

.field e:Z

.field f:Landroid/widget/LinearLayout;

.field final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/yr/sxmn3/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yr/sxmn3/PlayerActivity;->e:Z

    new-instance v0, Lcom/yr/sxmn3/ai;

    invoke-direct {v0, p0}, Lcom/yr/sxmn3/ai;-><init>(Lcom/yr/sxmn3/PlayerActivity;)V

    iput-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->g:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/yr/sxmn3/a/j;

    const-string v2, "\u5fae\u4fe1\t\t  30\u5143"

    const v3, 0x7f020053

    invoke-direct {v1, v2, v3}, Lcom/yr/sxmn3/a/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yr/sxmn3/a/j;

    const-string v2, "\u652f\u4ed8\u5b9d\t\t30\u5143"

    const v3, 0x7f020002

    invoke-direct {v1, v2, v3}, Lcom/yr/sxmn3/a/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yr/sxmn3/a/k;

    invoke-direct {v1, p0, v0}, Lcom/yr/sxmn3/a/k;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/yr/sxmn3/PlayerActivity;->d:Lcom/yr/sxmn3/a/k;

    new-instance v0, Lcom/yr/sxmn3/a/h;

    invoke-direct {v0}, Lcom/yr/sxmn3/a/h;-><init>()V

    new-instance v1, Lcom/yr/sxmn3/a/o;

    invoke-direct {v1}, Lcom/yr/sxmn3/a/o;-><init>()V

    iget-object v2, p0, Lcom/yr/sxmn3/PlayerActivity;->d:Lcom/yr/sxmn3/a/k;

    const-string v3, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f\uff1a\uff08\u5305\u5e74\u4f1a\u5458\uff09"

    invoke-virtual {v2, v3}, Lcom/yr/sxmn3/a/k;->a(Ljava/lang/String;)Lcom/yr/sxmn3/a/k;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yr/sxmn3/a/k;->a(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/a/d;->b(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/d;

    iget-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->d:Lcom/yr/sxmn3/a/k;

    new-instance v1, Lcom/yr/sxmn3/ap;

    invoke-direct {v1, p0}, Lcom/yr/sxmn3/ap;-><init>(Lcom/yr/sxmn3/PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/a/k;->a(Lcom/yr/sxmn3/a/n;)V

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/PlayerActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yr/sxmn3/PlayerActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yr/sxmn3/PlayerActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v1, p0, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "10001289"

    invoke-static {v0}, Lcom/upay/billing/sdk/Upay;->getInstance(Ljava/lang/String;)Lcom/upay/billing/sdk/Upay;

    move-result-object v0

    invoke-static {}, Lcom/yr/sxmn3/b/c;->a()Lcom/yr/sxmn3/b/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/yr/sxmn3/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yr/sxmn3/aq;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/aq;-><init>(Lcom/yr/sxmn3/PlayerActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/upay/billing/sdk/Upay;->pay(Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/sdk/UpayCallback;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/yr/sxmn3/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/yr/sxmn3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/PlayerActivity;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/PlayerActivity;->setRequestedOrientation(I)V

    const-string v0, ""

    invoke-virtual {p0}, Lcom/yr/sxmn3/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yr/sxmn3/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/yr/sxmn3/PlayerActivity;->a()V

    iget-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    new-instance v2, Lcom/yr/sxmn3/aj;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/aj;-><init>(Lcom/yr/sxmn3/PlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    new-instance v2, Lcom/yr/sxmn3/ak;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/ak;-><init>(Lcom/yr/sxmn3/PlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    new-instance v2, Lcom/yr/sxmn3/al;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/al;-><init>(Lcom/yr/sxmn3/PlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-direct {p0, v1}, Lcom/yr/sxmn3/PlayerActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    new-instance v1, Lcom/yr/sxmn3/am;

    invoke-direct {v1, p0}, Lcom/yr/sxmn3/am;-><init>(Lcom/yr/sxmn3/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yr/sxmn3/ao;

    invoke-direct {v1, p0, v0}, Lcom/yr/sxmn3/ao;-><init>(Lcom/yr/sxmn3/PlayerActivity;Landroid/os/Handler;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/yr/sxmn3/BaseActivity;->onResume()V

    return-void
.end method
