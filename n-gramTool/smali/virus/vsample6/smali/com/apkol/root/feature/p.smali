.class Lcom/apkol/root/feature/p;
.super Ljava/lang/Object;
.source "SoftRecommend.java"

# interfaces
.implements Lcom/apkol/utils/c$b;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/l;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/p;->a:Lcom/apkol/root/feature/l;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/apkol/root/feature/p;->a:Lcom/apkol/root/feature/l;

    invoke-static {v0}, Lcom/apkol/root/feature/l;->f(Lcom/apkol/root/feature/l;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 505
    const/4 v0, 0x0

    .line 506
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    return-void

    .line 506
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 508
    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 507
    check-cast v1, Ljava/lang/String;

    .line 509
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    check-cast v0, Lcom/apkol/utils/ui/AutoBgButton;

    .line 512
    :goto_1
    if-eqz v0, :cond_1

    .line 514
    iget-object v1, p0, Lcom/apkol/root/feature/p;->a:Lcom/apkol/root/feature/l;

    invoke-static {v1}, Lcom/apkol/root/feature/l;->d(Lcom/apkol/root/feature/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/apkol/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 513
    invoke-virtual {v0, v1}, Lcom/apkol/utils/ui/AutoBgButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method
