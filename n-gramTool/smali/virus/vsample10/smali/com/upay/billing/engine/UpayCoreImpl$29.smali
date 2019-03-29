.class Lcom/upay/billing/engine/UpayCoreImpl$29;
.super Lcom/upay/billing/engine/MessageRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$task:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$29;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p6, p0, Lcom/upay/billing/engine/UpayCoreImpl$29;->val$task:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/upay/billing/engine/MessageRunner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$29;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$29;->val$task:Ljava/lang/String;

    const-string v2, "fail"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$29;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->logEventCpa()V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$29;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$8102(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$29;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$29;->val$task:Ljava/lang/String;

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
