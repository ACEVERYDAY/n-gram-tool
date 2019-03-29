.class public Lcom/yr/sxmn3/AccountActivity;
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

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/AccountActivity;->setContentView(I)V

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yr/sxmn3/AccountActivity;->a:Landroid/widget/TextView;

    const-string v0, "SHARED_PREFERENCE"

    invoke-virtual {p0, v0, v2}, Lcom/yr/sxmn3/AccountActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/AccountActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u5305\u5e74\u4f1a\u5458\u72b6\u6001\uff1a\u672a\u6fc0\u6d3b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yr/sxmn3/AccountActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u5305\u5e74\u4f1a\u5458\u72b6\u6001\uff1a\u5df2\u6fc0\u6d3b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
