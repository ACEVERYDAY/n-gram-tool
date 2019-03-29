.class final Lcom/example/tb/a;
.super Landroid/os/Handler;


# instance fields
.field private synthetic r:Lcom/example/tb/NYR;

.field private final synthetic s:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/example/tb/NYR;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/example/tb/a;->r:Lcom/example/tb/NYR;

    iput-object p2, p0, Lcom/example/tb/a;->s:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/example/tb/a;->r:Lcom/example/tb/NYR;

    iget-object v0, p0, Lcom/example/tb/a;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/example/tb/NYR;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
