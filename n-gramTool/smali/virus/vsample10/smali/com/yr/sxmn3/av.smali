.class Lcom/yr/sxmn3/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/upay/billing/sdk/UpayCallback;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/ZhuBoFragment;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/ZhuBoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/av;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentResult(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    invoke-static {}, Lcom/yr/sxmn3/b/c;->a()Lcom/yr/sxmn3/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/av;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v1}, Lcom/yr/sxmn3/ZhuBoFragment;->b(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "14"

    const-string v4, "1"

    const-string v6, "13"

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/yr/sxmn3/b/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yr/sxmn3/av;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/ZhuBoFragment;->b(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SHARED_PREFERENCE"

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KF"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/yr/sxmn3/av;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/ZhuBoFragment;->b(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5145\u503c\u6210\u529f"

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lcom/yr/sxmn3/av;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/ZhuBoFragment;->b(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SHARED_PREFERENCE"

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TRADE_ID"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const/16 v0, 0x6e

    if-ne p3, v0, :cond_1

    invoke-static {}, Lcom/yr/sxmn3/b/c;->a()Lcom/yr/sxmn3/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/av;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v1}, Lcom/yr/sxmn3/ZhuBoFragment;->b(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "14"

    const-string v4, "3"

    const-string v6, "13"

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/yr/sxmn3/b/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/yr/sxmn3/b/c;->a()Lcom/yr/sxmn3/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/av;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v1}, Lcom/yr/sxmn3/ZhuBoFragment;->b(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "14"

    const-string v4, "2"

    const-string v6, "13"

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/yr/sxmn3/b/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTradeProgress(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    return-void
.end method
