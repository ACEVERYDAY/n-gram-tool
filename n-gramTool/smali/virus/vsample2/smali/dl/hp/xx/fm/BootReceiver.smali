.class public Ldl/hp/xx/fm/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "y"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-string v0, "Z&_:T!_fK-I%R;H!T&\u0015\u001a~\u000b~\u0001m\rd\nt\u0007o\u0017x\u0007v\u0018w\ro\r\u007f"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p1}, Ldl/hp/xx/fm/G;->pDvqLhYe(Landroid/content/Context;)V

    .line 264
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {p1}, Ldl/hp/xx/fm/G;->J(Landroid/content/Context;)V

    goto :goto_0
.end method
