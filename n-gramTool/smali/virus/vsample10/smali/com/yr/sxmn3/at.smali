.class Lcom/yr/sxmn3/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/ZhuBoFragment;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/ZhuBoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/at;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/at;)Lcom/yr/sxmn3/ZhuBoFragment;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/at;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/yr/sxmn3/at;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/ZhuBoFragment;->f(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KF"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yr/sxmn3/at;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    iget-object v0, v0, Lcom/yr/sxmn3/ZhuBoFragment;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/at;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    iget-object v0, v0, Lcom/yr/sxmn3/ZhuBoFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yr/sxmn3/at;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    iget-object v0, v0, Lcom/yr/sxmn3/ZhuBoFragment;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "video/mp4"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/yr/sxmn3/at;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/ZhuBoFragment;->a(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
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

    iget-object v2, p0, Lcom/yr/sxmn3/at;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/ZhuBoFragment;->b(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/yr/sxmn3/a/k;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/yr/sxmn3/a/h;

    invoke-direct {v0}, Lcom/yr/sxmn3/a/h;-><init>()V

    new-instance v2, Lcom/yr/sxmn3/a/o;

    invoke-direct {v2}, Lcom/yr/sxmn3/a/o;-><init>()V

    const-string v3, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f\uff1a\uff08\u5305\u5e74\u4f1a\u5458\uff09"

    invoke-virtual {v1, v3}, Lcom/yr/sxmn3/a/k;->a(Ljava/lang/String;)Lcom/yr/sxmn3/a/k;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/yr/sxmn3/a/k;->a(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yr/sxmn3/a/d;->b(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yr/sxmn3/a/d;->show()V

    new-instance v0, Lcom/yr/sxmn3/au;

    invoke-direct {v0, p0, v1}, Lcom/yr/sxmn3/au;-><init>(Lcom/yr/sxmn3/at;Lcom/yr/sxmn3/a/k;)V

    invoke-virtual {v1, v0}, Lcom/yr/sxmn3/a/k;->a(Lcom/yr/sxmn3/a/n;)V

    goto :goto_0
.end method
