.class Lcom/upay/billing/engine/UpayCoreImpl$7;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$event:Lcom/upay/billing/utils/Json;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$goodsKey:Ljava/lang/String;

.field final synthetic val$session:I

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/utils/Json;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$appKey:Ljava/lang/String;

    iput p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$session:I

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$goodsKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$extra:Ljava/lang/String;

    iput-object p6, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p7, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$event:Lcom/upay/billing/utils/Json;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v10, 0xa

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1110(Lcom/upay/billing/engine/UpayCoreImpl;)I

    move-result v0

    if-lez v0, :cond_4

    move v7, v8

    :goto_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0, v10}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1102(Lcom/upay/billing/engine/UpayCoreImpl;I)I

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1200(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1200(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1300(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_progress_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$session:I

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$goodsKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$extra:Ljava/lang/String;

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$event:Lcom/upay/billing/utils/Json;

    invoke-virtual/range {v0 .. v6}, Lcom/upay/billing/engine/UpayCoreImpl;->realPay(ILjava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/utils/Json;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-nez v4, :cond_3

    if-nez v7, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0, v10}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1102(Lcom/upay/billing/engine/UpayCoreImpl;I)I

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1200(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1200(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/engine/UpayCoreImpl$1;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$appKey:Ljava/lang/String;

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1400(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1500(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1600(Lcom/upay/billing/engine/UpayCoreImpl;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1702(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/Timer;)Ljava/util/Timer;

    new-instance v1, Lcom/upay/billing/engine/UpayCoreImpl$7$1;

    invoke-direct {v1, p0}, Lcom/upay/billing/engine/UpayCoreImpl$7$1;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$7;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v5, "common"

    const-string v6, "interval_time"

    const-string v7, "4000"

    invoke-virtual {v4, v5, v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_3
    return-void

    :cond_4
    move v7, v9

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
