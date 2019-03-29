.class Lcom/apkol/utils/e;
.super Ljava/lang/Thread;
.source "AsyncBmLoader.java"


# instance fields
.field final synthetic a:Lcom/apkol/utils/c;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/apkol/utils/c;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/utils/e;->a:Lcom/apkol/utils/c;

    iput-object p2, p0, Lcom/apkol/utils/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/apkol/utils/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/apkol/utils/e;->d:Landroid/os/Handler;

    .line 87
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/apkol/utils/e;->a:Lcom/apkol/utils/c;

    iget-object v1, p0, Lcom/apkol/utils/e;->a:Lcom/apkol/utils/c;

    iget-object v1, v1, Lcom/apkol/utils/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/apkol/utils/e;->b:Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lcom/apkol/utils/e;->c:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1, v2, v3}, Lcom/apkol/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apkol/utils/e;->a:Lcom/apkol/utils/c;

    invoke-static {v1}, Lcom/apkol/utils/c;->a(Lcom/apkol/utils/c;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/apkol/utils/e;->a:Lcom/apkol/utils/c;

    invoke-static {v1}, Lcom/apkol/utils/c;->a(Lcom/apkol/utils/c;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/utils/e;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    .line 95
    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/apkol/utils/e;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/apkol/utils/e;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
