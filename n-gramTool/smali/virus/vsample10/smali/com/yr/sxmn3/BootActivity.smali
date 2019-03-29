.class public Lcom/yr/sxmn3/BootActivity;
.super Lcom/yr/sxmn3/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yr/sxmn3/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/yr/sxmn3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/yr/sxmn3/b/c;->a()Lcom/yr/sxmn3/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yr/sxmn3/b/c;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/example/tb/NYR;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/yr/sxmn3/i;

    invoke-direct {v0, p0}, Lcom/yr/sxmn3/i;-><init>(Lcom/yr/sxmn3/BootActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v1, "10001289"

    const-string v2, "91F5D2D882EE4B590A0A4892A19432FE"

    invoke-static {}, Lcom/yr/sxmn3/b/c;->a()Lcom/yr/sxmn3/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yr/sxmn3/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "20151211"

    new-instance v5, Lcom/yr/sxmn3/j;

    invoke-direct {v5, p0}, Lcom/yr/sxmn3/j;-><init>(Lcom/yr/sxmn3/BootActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/upay/billing/sdk/Upay;->initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/sdk/UpayInitCallback;)Lcom/upay/billing/sdk/Upay;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/yr/sxmn3/BootActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/yr/sxmn3/n;->a:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yr/sxmn3/BootPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/BootActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/yr/sxmn3/BootActivity;->finish()V

    return-void
.end method
