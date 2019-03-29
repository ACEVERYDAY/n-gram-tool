.class final Lc/aguoqkle/n/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lc/aguoqkle/n/CocoMi;


# direct methods
.method constructor <init>(Lc/aguoqkle/n/CocoMi;)V
    .locals 0

    iput-object p1, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lc/aguoqkle/n/e;->getResultCode()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    invoke-virtual {p0}, Lc/aguoqkle/n/e;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0}, Lc/aguoqkle/n/CocoMi;->c(Lc/aguoqkle/n/CocoMi;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0}, Lc/aguoqkle/n/CocoMi;->c(Lc/aguoqkle/n/CocoMi;)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0}, Lc/aguoqkle/n/CocoMi;->e(Lc/aguoqkle/n/CocoMi;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0}, Lc/aguoqkle/n/CocoMi;->e(Lc/aguoqkle/n/CocoMi;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lc/aguoqkle/n/CocoMi;->a(Lc/aguoqkle/n/CocoMi;I)V

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v1, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v1, v1, Lc/aguoqkle/n/CocoMi;->p:Ljava/lang/String;

    iget-object v2, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc/aguoqkle/n/CocoMi;->a(Lc/aguoqkle/n/CocoMi;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0}, Lc/aguoqkle/n/CocoMi;->b(Lc/aguoqkle/n/CocoMi;)V

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-virtual {v0}, Lc/aguoqkle/n/CocoMi;->c()V

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0}, Lc/aguoqkle/n/CocoMi;->c(Lc/aguoqkle/n/CocoMi;)I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0}, Lc/aguoqkle/n/CocoMi;->c(Lc/aguoqkle/n/CocoMi;)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_2
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->a(Lc/aguoqkle/n/CocoMi;I)V

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v1, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v1}, Lc/aguoqkle/n/CocoMi;->d(Lc/aguoqkle/n/CocoMi;)I

    move-result v1

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/CocoMi;->a(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->a(Lc/aguoqkle/n/CocoMi;I)V

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0}, Lc/aguoqkle/n/CocoMi;->c(Lc/aguoqkle/n/CocoMi;)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lc/aguoqkle/n/e;->a:Lc/aguoqkle/n/CocoMi;

    invoke-virtual {v0}, Lc/aguoqkle/n/CocoMi;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
