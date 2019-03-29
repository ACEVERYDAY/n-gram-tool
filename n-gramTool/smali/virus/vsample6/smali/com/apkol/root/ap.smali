.class Lcom/apkol/root/ap;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/ao;


# direct methods
.method constructor <init>(Lcom/apkol/root/ao;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/ap;->a:Lcom/apkol/root/ao;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 184
    iget-object v0, p0, Lcom/apkol/root/ap;->a:Lcom/apkol/root/ao;

    invoke-static {v0}, Lcom/apkol/root/ao;->a(Lcom/apkol/root/ao;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 185
    iget-object v0, p0, Lcom/apkol/root/ap;->a:Lcom/apkol/root/ao;

    .line 186
    const v2, 0x7f090126

    invoke-virtual {v0, v2}, Lcom/apkol/root/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    check-cast v0, Landroid/widget/ScrollView;

    .line 187
    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 188
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    const/4 v2, -0x2

    .line 190
    iget-object v3, p0, Lcom/apkol/root/ap;->a:Lcom/apkol/root/ao;

    invoke-static {v3}, Lcom/apkol/root/ao;->b(Lcom/apkol/root/ao;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43160000    # 150.0f

    invoke-static {v3, v4}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :cond_0
    return-void
.end method
