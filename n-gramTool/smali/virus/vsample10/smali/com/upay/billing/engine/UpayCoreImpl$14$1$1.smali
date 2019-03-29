.class Lcom/upay/billing/engine/UpayCoreImpl$14$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$2:Lcom/upay/billing/engine/UpayCoreImpl$14$1;

.field final synthetic val$activity:Lcom/upay/billing/UpayActivity;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl$14$1;Lcom/upay/billing/UpayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1$1;->this$2:Lcom/upay/billing/engine/UpayCoreImpl$14$1;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1$1;->val$activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1$1;->this$2:Lcom/upay/billing/engine/UpayCoreImpl$14$1;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$14;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v1, "expand_click_install"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1$1;->this$2:Lcom/upay/billing/engine/UpayCoreImpl$14$1;

    iget-object v2, v2, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    iget-object v2, v2, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$appkey:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1$1;->this$2:Lcom/upay/billing/engine/UpayCoreImpl$14$1;

    iget-object v3, v3, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    iget-object v3, v3, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$cpkey:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1$1;->this$2:Lcom/upay/billing/engine/UpayCoreImpl$14$1;

    iget-object v4, v4, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    iget-object v4, v4, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$androidId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->logEventExpand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1$1;->val$activity:Lcom/upay/billing/UpayActivity;

    const-string v1, "expand_show"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
