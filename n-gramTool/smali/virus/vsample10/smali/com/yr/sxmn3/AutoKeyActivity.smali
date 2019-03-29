.class public Lcom/yr/sxmn3/AutoKeyActivity;
.super Lcom/yr/sxmn3/BaseActivity;


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yr/sxmn3/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/yr/sxmn3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/AutoKeyActivity;->setContentView(I)V

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/AutoKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yr/sxmn3/AutoKeyActivity;->a:Landroid/widget/TextView;

    const-string v0, "SHARED_PREFERENCE"

    invoke-virtual {p0, v0, v2}, Lcom/yr/sxmn3/AutoKeyActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u662f\u4f1a\u5458\uff0c\u65e0\u9700\u6fc0\u6d3b"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
