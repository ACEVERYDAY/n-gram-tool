.class Lcom/upay/billing/engine/he_danji/Main$3$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/he_danji/Main$3$2;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/16 v0, 0x4e20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$3;->val$xq_ip:Ljava/lang/String;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$3;->val$cid:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$3;->val$pay_nike:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v4, v4, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget-object v4, v4, Lcom/upay/billing/engine/he_danji/Main$3;->val$ucon:Lcom/upay/billing/UpayContext;

    iget-object v4, v4, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$3;->val$ucon:Lcom/upay/billing/UpayContext;

    iget-object v5, v5, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    iget-object v6, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v6, v6, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget-object v6, v6, Lcom/upay/billing/engine/he_danji/Main$3;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v7, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v7, v7, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget-object v7, v7, Lcom/upay/billing/engine/he_danji/Main$3;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v8, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v8, v8, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget-object v8, v8, Lcom/upay/billing/engine/he_danji/Main$3;->val$serialNo:Ljava/lang/String;

    iget-object v9, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v9, v9, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget v9, v9, Lcom/upay/billing/engine/he_danji/Main$3;->val$sendNum:I

    iget-object v10, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v10, v10, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget-object v10, v10, Lcom/upay/billing/engine/he_danji/Main$3;->val$payEvent:Lcom/upay/billing/utils/Json;

    iget-object v11, p0, Lcom/upay/billing/engine/he_danji/Main$3$2$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v11, v11, Lcom/upay/billing/engine/he_danji/Main$3$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$3;

    iget-object v11, v11, Lcom/upay/billing/engine/he_danji/Main$3;->val$chargeEvent:Lcom/upay/billing/utils/Json;

    invoke-static/range {v0 .. v11}, Lcom/upay/billing/engine/he_danji/Main;->access$1100(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;ILcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
