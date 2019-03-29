.class Lcom/upay/billing/engine/UpayCoreImpl$8;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$8;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$8;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2000(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_trade_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$8;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2100(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$8;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2100(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method
