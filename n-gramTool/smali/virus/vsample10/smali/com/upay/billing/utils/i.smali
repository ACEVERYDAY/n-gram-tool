.class Lcom/upay/billing/utils/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic la:Lcom/upay/billing/utils/h;


# direct methods
.method constructor <init>(Lcom/upay/billing/utils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/utils/i;->la:Lcom/upay/billing/utils/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/upay/billing/utils/i;->la:Lcom/upay/billing/utils/h;

    invoke-static {v0}, Lcom/upay/billing/utils/h;->a(Lcom/upay/billing/utils/h;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f88\u62b1\u6b49,\u7a0b\u5e8f\u51fa\u73b0\u5f02\u5e38,\u5373\u5c06\u9000\u51fa."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
