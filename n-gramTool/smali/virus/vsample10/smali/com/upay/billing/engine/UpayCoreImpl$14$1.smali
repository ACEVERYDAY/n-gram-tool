.class Lcom/upay/billing/engine/UpayCoreImpl$14$1;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl$14;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed(Lcom/upay/billing/UpayActivity;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPostCreate(Lcom/upay/billing/UpayActivity;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.by.ac.loader.Loader$ExitListener"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "finish"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    iget-object v2, v2, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$object:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$14$1$1;

    invoke-direct {v0, p0, p1}, Lcom/upay/billing/engine/UpayCoreImpl$14$1$1;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$14$1;Lcom/upay/billing/UpayActivity;)V

    invoke-static {v5, v6, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$14;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v1, "expand_show_install"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    iget-object v2, v2, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$appkey:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    iget-object v3, v3, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$cpkey:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$14$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$14;

    iget-object v4, v4, Lcom/upay/billing/engine/UpayCoreImpl$14;->val$androidId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->logEventExpand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
