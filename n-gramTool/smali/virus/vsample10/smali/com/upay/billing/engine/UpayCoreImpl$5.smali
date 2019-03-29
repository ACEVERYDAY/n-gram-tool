.class Lcom/upay/billing/engine/UpayCoreImpl$5;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$push_end_time:I

.field final synthetic val$push_show_time:J

.field final synthetic val$push_start_time:I


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;IIJ)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->val$push_start_time:I

    iput p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->val$push_end_time:I

    iput-wide p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->val$push_show_time:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->val$push_start_time:I

    iget v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->val$push_end_time:I

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->judgmentTime(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$702(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$800(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/TimerTask;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    new-instance v1, Lcom/upay/billing/engine/UpayCoreImpl$5$1;

    invoke-direct {v1, p0}, Lcom/upay/billing/engine/UpayCoreImpl$5$1;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$5;)V

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$802(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$800(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    iget-wide v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->val$push_show_time:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    const-wide/16 v0, 0x2710

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$802(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$702(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method
