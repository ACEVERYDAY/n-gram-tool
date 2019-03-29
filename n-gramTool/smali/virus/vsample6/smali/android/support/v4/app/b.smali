.class Landroid/support/v4/app/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/support/v4/app/a;


# direct methods
.method constructor <init>(Landroid/support/v4/app/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-static {}, Landroid/support/v4/app/a;->b()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Landroid/support/v4/app/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadFeeNetDataHandler OK"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v5, :cond_0

    const-string v1, "mtpara:"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/support/v4/app/a;->c()I

    move-result v1

    if-ge v1, v4, :cond_1

    invoke-static {}, Landroid/support/v4/app/a;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/support/v4/app/a;->a(I)V

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/a;

    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/a;

    invoke-static {v2}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/a;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/a;

    invoke-static {v3}, Landroid/support/v4/app/a;->b(Landroid/support/v4/app/a;)I

    move-result v3

    invoke-static {v0, v1, v2, v3, v6}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/a;Landroid/content/Context;IILjava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/a;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/a;->a([B)V

    invoke-static {v3}, Landroid/support/v4/app/a;->a(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/support/v4/app/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadFeeNetDataHandler Err"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/a;->c()I

    move-result v0

    if-ge v0, v4, :cond_2

    invoke-static {}, Landroid/support/v4/app/a;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/support/v4/app/a;->a(I)V

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/a;

    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/a;

    invoke-static {v2}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/a;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/a;

    invoke-static {v3}, Landroid/support/v4/app/a;->b(Landroid/support/v4/app/a;)I

    move-result v3

    invoke-static {v0, v1, v2, v3, v6}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/a;Landroid/content/Context;IILjava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-static {v3}, Landroid/support/v4/app/a;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
