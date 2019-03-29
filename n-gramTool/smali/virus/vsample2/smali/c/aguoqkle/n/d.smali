.class final Lc/aguoqkle/n/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/aguoqkle/n/CocoMi;


# direct methods
.method constructor <init>(Lc/aguoqkle/n/CocoMi;)V
    .locals 0

    iput-object p1, p0, Lc/aguoqkle/n/d;->a:Lc/aguoqkle/n/CocoMi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/aguoqkle/n/d;->a:Lc/aguoqkle/n/CocoMi;

    invoke-virtual {v0}, Lc/aguoqkle/n/CocoMi;->e()Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lc/aguoqkle/n/d;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v1}, Lc/aguoqkle/n/CocoMi;->a(Lc/aguoqkle/n/CocoMi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
