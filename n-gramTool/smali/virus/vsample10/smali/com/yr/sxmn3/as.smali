.class Lcom/yr/sxmn3/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/ZhuBoFragment;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/ZhuBoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/as;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/yr/sxmn3/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yr/sxmn3/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/yr/sxmn3/h;->b()Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/yr/sxmn3/as;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v1}, Lcom/yr/sxmn3/ZhuBoFragment;->e(Lcom/yr/sxmn3/ZhuBoFragment;)Lcom/yr/sxmn3/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yr/sxmn3/aw;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/yr/sxmn3/as;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/ZhuBoFragment;->e(Lcom/yr/sxmn3/ZhuBoFragment;)Lcom/yr/sxmn3/aw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/aw;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    sget-object v0, Lcom/yr/sxmn3/h;->b:Ljava/util/List;

    goto :goto_0
.end method
