.class Lcom/apkol/root/feature/ah;
.super Landroid/os/Handler;
.source "UninstallFeature.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/ag;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/ag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/ah;->a:Lcom/apkol/root/feature/ag;

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 83
    :sswitch_0
    iget-object v0, p0, Lcom/apkol/root/feature/ah;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->a(Lcom/apkol/root/feature/ag;)Lcom/apkol/utils/f/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apkol/utils/f/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :sswitch_1
    iget-object v0, p0, Lcom/apkol/root/feature/ah;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->b(Lcom/apkol/root/feature/ag;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apkol/root/feature/x;->a(Landroid/content/Context;)Lcom/apkol/root/feature/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/root/feature/x;->a()V

    goto :goto_0

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x2010 -> :sswitch_1
    .end sparse-switch
.end method
