.class Lcom/yr/sxmn3/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/HomePageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/s;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/yr/sxmn3/s;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->v(Lcom/yr/sxmn3/HomePageFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KF"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yr/sxmn3/s;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->u(Lcom/yr/sxmn3/HomePageFragment;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/yr/sxmn3/DetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/s;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yr/sxmn3/s;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->u(Lcom/yr/sxmn3/HomePageFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u60a8\u5df2\u662f\u4f1a\u5458\u8bf7\u5230\u4f1a\u5458\u533a\u89c2\u770b"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
