.class Lcom/yr/sxmn3/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/HomePageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/u;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/yr/sxmn3/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yr/sxmn3/h;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/yr/sxmn3/h;->a()Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/yr/sxmn3/u;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v1}, Lcom/yr/sxmn3/HomePageFragment;->x(Lcom/yr/sxmn3/HomePageFragment;)Lcom/yr/sxmn3/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yr/sxmn3/w;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/yr/sxmn3/u;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->x(Lcom/yr/sxmn3/HomePageFragment;)Lcom/yr/sxmn3/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/w;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    sget-object v0, Lcom/yr/sxmn3/h;->a:Ljava/util/HashMap;

    goto :goto_0
.end method
