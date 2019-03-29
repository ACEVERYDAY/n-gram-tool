.class Lcom/apkol/root/feature/ar;
.super Landroid/os/Handler;
.source "UpdateFeature.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/aq;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/aq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    .line 37
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    iget-object v0, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v0}, Lcom/apkol/root/feature/aq;->a(Lcom/apkol/root/feature/aq;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v0}, Lcom/apkol/root/feature/aq;->a(Lcom/apkol/root/feature/aq;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 46
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v0}, Lcom/apkol/root/feature/aq;->b(Lcom/apkol/root/feature/aq;)Lcom/apkol/root/b/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v0}, Lcom/apkol/root/feature/aq;->b(Lcom/apkol/root/feature/aq;)Lcom/apkol/root/b/j;

    move-result-object v0

    iget-object v1, v0, Lcom/apkol/root/b/j;->d:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v0}, Lcom/apkol/root/feature/aq;->b(Lcom/apkol/root/feature/aq;)Lcom/apkol/root/b/j;

    move-result-object v0

    iget-object v2, v0, Lcom/apkol/root/b/j;->a:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v0}, Lcom/apkol/root/feature/aq;->b(Lcom/apkol/root/feature/aq;)Lcom/apkol/root/b/j;

    move-result-object v0

    iget-object v0, v0, Lcom/apkol/root/b/j;->a:Ljava/lang/String;

    .line 53
    iget-object v3, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v3}, Lcom/apkol/root/feature/aq;->b(Lcom/apkol/root/feature/aq;)Lcom/apkol/root/b/j;

    move-result-object v3

    iget-object v3, v3, Lcom/apkol/root/b/j;->a:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    iget-object v0, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v0}, Lcom/apkol/root/feature/aq;->b(Lcom/apkol/root/feature/aq;)Lcom/apkol/root/b/j;

    move-result-object v0

    iget-object v4, v0, Lcom/apkol/root/b/j;->f:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    .line 56
    const/4 v5, 0x1

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/apkol/root/feature/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apkol/root/feature/aq;->a(I)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/feature/ar;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v0}, Lcom/apkol/root/feature/aq;->c(Lcom/apkol/root/feature/aq;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0500be

    invoke-static {v0, v1}, Lcom/apkol/utils/v;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
