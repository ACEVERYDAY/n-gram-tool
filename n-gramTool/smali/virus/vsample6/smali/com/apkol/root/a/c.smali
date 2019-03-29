.class Lcom/apkol/root/a/c;
.super Ljava/lang/Object;
.source "DownLoadTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/a/a;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 96
    iget-object v0, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v0}, Lcom/apkol/root/a/a;->c(Lcom/apkol/root/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apkol/root/b/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v2}, Lcom/apkol/root/a/a;->d(Lcom/apkol/root/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/apkol/utils/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v4}, Lcom/apkol/root/a/a;->e(Lcom/apkol/root/a/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    invoke-static {v2, v0}, Lcom/apkol/root/a/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    iput v0, v3, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v0}, Lcom/apkol/root/a/a;->h(Lcom/apkol/root/a/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    iget-object v1, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apkol/root/a/a;->a(Lcom/apkol/root/a/a;Ljava/lang/String;)V

    .line 109
    iput v6, v3, Landroid/os/Message;->what:I

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    new-instance v2, Lcom/apkol/utils/e/b$c;

    invoke-direct {v2}, Lcom/apkol/utils/e/b$c;-><init>()V

    invoke-static {v1, v2}, Lcom/apkol/root/a/a;->a(Lcom/apkol/root/a/a;Lcom/apkol/utils/e/b$c;)V

    .line 113
    iget-object v1, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v1}, Lcom/apkol/root/a/a;->f(Lcom/apkol/root/a/a;)Lcom/apkol/utils/e/b$c;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v2}, Lcom/apkol/root/a/a;->c(Lcom/apkol/root/a/a;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 114
    iget-object v1, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v1}, Lcom/apkol/root/a/a;->f(Lcom/apkol/root/a/a;)Lcom/apkol/utils/e/b$c;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v2}, Lcom/apkol/root/a/a;->g(Lcom/apkol/root/a/a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v1}, Lcom/apkol/root/a/a;->f(Lcom/apkol/root/a/a;)Lcom/apkol/utils/e/b$c;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    iput-object v2, v1, Lcom/apkol/utils/e/b$c;->e:Lcom/apkol/utils/e/h$a;

    .line 116
    iget-object v1, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v1}, Lcom/apkol/root/a/a;->f(Lcom/apkol/root/a/a;)Lcom/apkol/utils/e/b$c;

    move-result-object v1

    invoke-static {v1}, Lcom/apkol/utils/e/b;->a(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    invoke-static {}, Lcom/apkol/root/a/a;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "down tool path ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v2

    .line 122
    :try_start_1
    invoke-virtual {v2}, Lcom/apkol/utils/i;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 125
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v5}, Lcom/apkol/root/a/a;->d(Lcom/apkol/root/a/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/apkol/utils/i;->a(Ljava/lang/String;[B)Z

    .line 134
    :goto_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v4}, Lcom/apkol/root/a/a;->d(Lcom/apkol/root/a/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/apkol/root/a/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    iput v0, v3, Landroid/os/Message;->what:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 136
    :catch_1
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    iget-object v1, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apkol/root/a/a;->a(Lcom/apkol/root/a/a;Ljava/lang/String;)V

    .line 140
    iput v6, v3, Landroid/os/Message;->what:I

    goto/16 :goto_0

    .line 131
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v4}, Lcom/apkol/root/a/a;->c(Lcom/apkol/root/a/a;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/apkol/root/a/c;->a:Lcom/apkol/root/a/a;

    invoke-static {v5}, Lcom/apkol/root/a/a;->d(Lcom/apkol/root/a/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v1}, Lcom/apkol/utils/i;->a(Landroid/content/Context;Ljava/lang/String;[B)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 143
    :cond_3
    iput v6, v3, Landroid/os/Message;->what:I

    goto/16 :goto_0
.end method
