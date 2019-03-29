.class public Lcom/apkol/root/view/a$a;
.super Ljava/lang/Object;
.source "PinnedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/root/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apkol/root/view/a;

.field private b:I

.field private c:Lcom/apkol/root/b/b;


# direct methods
.method public constructor <init>(Lcom/apkol/root/view/a;ILcom/apkol/root/b/b;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/apkol/root/view/a$a;->a:Lcom/apkol/root/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p2, p0, Lcom/apkol/root/view/a$a;->b:I

    .line 193
    iput-object p3, p0, Lcom/apkol/root/view/a$a;->c:Lcom/apkol/root/b/b;

    .line 194
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/apkol/root/view/a$a;->a:Lcom/apkol/root/view/a;

    invoke-static {v0}, Lcom/apkol/root/view/a;->a(Lcom/apkol/root/view/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apkol/root/view/a$a;->a:Lcom/apkol/root/view/a;

    invoke-static {v0}, Lcom/apkol/root/view/a;->a(Lcom/apkol/root/view/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget v0, p0, Lcom/apkol/root/view/a$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 203
    iget-object v0, p0, Lcom/apkol/root/view/a$a;->a:Lcom/apkol/root/view/a;

    iget-object v1, p0, Lcom/apkol/root/view/a$a;->c:Lcom/apkol/root/b/b;

    invoke-static {v0, v1}, Lcom/apkol/root/view/a;->a(Lcom/apkol/root/view/a;Lcom/apkol/root/b/b;)V

    goto :goto_0

    .line 204
    :cond_2
    iget v0, p0, Lcom/apkol/root/view/a$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/apkol/root/view/a$a;->a:Lcom/apkol/root/view/a;

    iget-object v1, p0, Lcom/apkol/root/view/a$a;->c:Lcom/apkol/root/b/b;

    invoke-static {v0, v1}, Lcom/apkol/root/view/a;->b(Lcom/apkol/root/view/a;Lcom/apkol/root/b/b;)V

    goto :goto_0
.end method
