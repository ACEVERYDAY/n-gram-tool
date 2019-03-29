.class final Lcom/yr/sxmn3/aw;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/ZhuBoFragment;


# direct methods
.method private constructor <init>(Lcom/yr/sxmn3/ZhuBoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/aw;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yr/sxmn3/ZhuBoFragment;Lcom/yr/sxmn3/aw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yr/sxmn3/aw;-><init>(Lcom/yr/sxmn3/ZhuBoFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/yr/sxmn3/aw;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/yr/sxmn3/ZhuBoFragment;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/yr/sxmn3/aw;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/ZhuBoFragment;->a(Lcom/yr/sxmn3/ZhuBoFragment;)Lcom/c/a/b/d;

    new-instance v0, Lcom/yr/sxmn3/ar;

    iget-object v1, p0, Lcom/yr/sxmn3/aw;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v1}, Lcom/yr/sxmn3/ZhuBoFragment;->b(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/yr/sxmn3/aw;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    iget-object v2, v2, Lcom/yr/sxmn3/ZhuBoFragment;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/yr/sxmn3/aw;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/ZhuBoFragment;->c(Lcom/yr/sxmn3/ZhuBoFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yr/sxmn3/ar;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/c/a/b/d;)V

    iget-object v1, p0, Lcom/yr/sxmn3/aw;->a:Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-static {v1}, Lcom/yr/sxmn3/ZhuBoFragment;->d(Lcom/yr/sxmn3/ZhuBoFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
