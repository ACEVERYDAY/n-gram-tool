.class Lcom/upay/billing/engine/UpayCoreImpl$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$event:Lcom/upay/billing/utils/Json;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$goodsKey:Ljava/lang/String;

.field final synthetic val$plan:Lcom/upay/billing/bean/Plan;

.field final synthetic val$session:I

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;ILjava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/utils/Json;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$session:I

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$goodsKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$extra:Ljava/lang/String;

    iput-object p5, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$plan:Lcom/upay/billing/bean/Plan;

    iput-object p6, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p7, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$event:Lcom/upay/billing/utils/Json;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$session:I

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$goodsKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$extra:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$plan:Lcom/upay/billing/bean/Plan;

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$6;->val$event:Lcom/upay/billing/utils/Json;

    invoke-virtual/range {v0 .. v6}, Lcom/upay/billing/engine/UpayCoreImpl;->realPay(ILjava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/utils/Json;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
