.class Lcom/upay/billing/engine/UpayCoreImpl$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$2;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :goto_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$2;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$100(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cooldown;

    invoke-virtual {v0}, Lcom/upay/billing/bean/Cooldown;->cooling()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/upay/billing/bean/Cooldown;->startTime:J

    sub-long/2addr v2, v4

    iget v4, v0, Lcom/upay/billing/bean/Cooldown;->interval:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    iget-boolean v4, v0, Lcom/upay/billing/bean/Cooldown;->stopped:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$2;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v5, "common"

    const-string v6, "default_cd_time"

    const-string v7, "300000"

    invoke-virtual {v4, v5, v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/upay/billing/bean/Cooldown;->reset()V

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
