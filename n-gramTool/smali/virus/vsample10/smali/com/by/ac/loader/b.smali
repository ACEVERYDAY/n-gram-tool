.class Lcom/by/ac/loader/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/by/ac/loader/Loader$InitListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/by/ac/loader/Loader$InitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/by/ac/loader/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/by/ac/loader/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/by/ac/loader/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/by/ac/loader/b;->d:Lcom/by/ac/loader/Loader$InitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/by/ac/loader/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/by/ac/loader/Loader;->createFolder(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/by/ac/loader/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/gxTmp/gx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/by/ac/loader/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/by/ac/loader/Loader;->clearFiles(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/by/ac/loader/Loader;->access$0()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/by/ac/loader/c;

    iget-object v3, p0, Lcom/by/ac/loader/b;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/by/ac/loader/b;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/by/ac/loader/b;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/by/ac/loader/b;->d:Lcom/by/ac/loader/Loader$InitListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/by/ac/loader/c;-><init>(Lcom/by/ac/loader/b;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/by/ac/loader/Loader$InitListener;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/a/a;

    iget-object v1, p0, Lcom/by/ac/loader/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/a/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/by/ac/loader/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/gxTmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "chmod"

    aput-object v4, v3, v6

    const-string v4, "777"

    aput-object v4, v3, v7

    aput-object v1, v3, v8

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "chmod"

    aput-object v5, v4, v6

    const-string v5, "777"

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/gx"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3}, Lcom/a/c;->a([Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/a/c;->a([Ljava/lang/String;)Z

    const-string v1, "http://zt-adfiles-qd.oss-cn-qingdao.aliyuncs.com/1512/rt/gx.bin"

    invoke-virtual {v0, v1, v2}, Lcom/a/a;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/by/ac/loader/Loader;->access$0()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/by/ac/loader/d;

    iget-object v3, p0, Lcom/by/ac/loader/b;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/by/ac/loader/b;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/by/ac/loader/b;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/by/ac/loader/b;->d:Lcom/by/ac/loader/Loader$InitListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/by/ac/loader/d;-><init>(Lcom/by/ac/loader/b;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/by/ac/loader/Loader$InitListener;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
