.class Lcom/upay/billing/engine/UpayCoreImpl$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$androidId:Ljava/lang/String;

.field final synthetic val$appkey:Ljava/lang/String;

.field final synthetic val$cpkey:Ljava/lang/String;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$14;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$appkey:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$cpkey:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$androidId:Ljava/lang/String;

    iput-object p5, p0, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$14;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v1, "expand_init_success"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$appkey:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$cpkey:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$androidId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->logEventExpand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$14;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4300(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "expand_show"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$14;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4400(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/upay/billing/engine/UpayCoreImpl$14$1;

    invoke-direct {v4, p0}, Lcom/upay/billing/engine/UpayCoreImpl$14$1;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$14;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
