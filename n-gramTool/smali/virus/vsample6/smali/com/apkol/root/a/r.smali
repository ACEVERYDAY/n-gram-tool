.class public Lcom/apkol/root/a/r;
.super Lcom/apkol/root/a/y;
.source "ReName.java"

# interfaces
.implements Lcom/apkol/root/a/x;


# instance fields
.field private final e:Ljava/lang/String;

.field private f:Lcom/apkol/root/a/ad;

.field private g:Landroid/content/Context;

.field private h:Landroid/content/res/Resources;

.field private i:Ljava/util/Timer;

.field private j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:Ljava/lang/String;

.field private q:Lcom/apkol/root/AssistConst;

.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apkol/root/a/ad;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, p1}, Lcom/apkol/root/a/y;-><init>(Landroid/content/Context;)V

    .line 24
    const-class v0, Lcom/apkol/root/a/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/r;->e:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/apkol/root/a/r;->i:Ljava/util/Timer;

    .line 33
    iput v1, p0, Lcom/apkol/root/a/r;->k:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/a/r;->l:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/apkol/root/a/r;->m:I

    .line 37
    iput v1, p0, Lcom/apkol/root/a/r;->n:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/apkol/root/a/r;->o:I

    .line 42
    const-string v0, "/system/bin/sdxpmgr"

    iput-object v0, p0, Lcom/apkol/root/a/r;->p:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    .line 46
    new-instance v0, Lcom/apkol/root/a/s;

    invoke-direct {v0, p0}, Lcom/apkol/root/a/s;-><init>(Lcom/apkol/root/a/r;)V

    iput-object v0, p0, Lcom/apkol/root/a/r;->r:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/apkol/root/a/r;->g:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/r;->h:Landroid/content/res/Resources;

    .line 87
    iput-object p2, p0, Lcom/apkol/root/a/r;->f:Lcom/apkol/root/a/ad;

    .line 88
    iput v1, p0, Lcom/apkol/root/a/r;->j:I

    .line 90
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/a/r;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/apkol/root/a/r;->j:I

    return v0
.end method

.method static synthetic a(Lcom/apkol/root/a/r;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/apkol/root/a/r;->j:I

    return-void
.end method

.method static synthetic b(Lcom/apkol/root/a/r;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/apkol/root/a/r;->k()V

    return-void
.end method

.method static synthetic c(Lcom/apkol/root/a/r;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/apkol/root/a/r;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/apkol/root/a/r;)Lcom/apkol/root/a/ad;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/apkol/root/a/r;->f:Lcom/apkol/root/a/ad;

    return-object v0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 120
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/sdxpmgr"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const/4 v2, 0x0

    .line 124
    :try_start_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/apkol/root/a/r;->a(Ljava/lang/StackTraceElement;)V

    .line 125
    const-string v1, "/system/bin/sdxpmgr"

    const-string v3, "echo root"

    invoke-static {v1, v3}, Lcom/apkol/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "root"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 134
    :cond_0
    return v0

    .line 126
    :catch_0
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic e(Lcom/apkol/root/a/r;)Lcom/apkol/root/AssistConst;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    return-object v0
.end method

.method static synthetic f(Lcom/apkol/root/a/r;)Z
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/apkol/root/a/r;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/apkol/root/a/r;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/apkol/root/a/r;->h()V

    return-void
.end method

.method static synthetic h(Lcom/apkol/root/a/r;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/apkol/root/a/r;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/apkol/root/a/r;->j()V

    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/u;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/u;-><init>(Lcom/apkol/root/a/r;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method private i()Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    iget-object v1, v1, Lcom/apkol/root/AssistConst;->S:Ljava/lang/String;

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v3

    iget-object v4, p0, Lcom/apkol/root/a/r;->g:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/apkol/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/system/bin/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/system/xbin/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "romt"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/system/app/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "romt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 172
    iget v7, p0, Lcom/apkol/root/a/r;->j:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 173
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    iget-object v8, p0, Lcom/apkol/root/a/r;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/apkol/root/b/g;->a(Landroid/content/Context;)Lcom/apkol/root/b/g;

    move-result-object v8

    .line 175
    invoke-virtual {v8}, Lcom/apkol/root/b/g;->a()[Ljava/lang/String;

    move-result-object v8

    .line 176
    if-eqz v8, :cond_1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "mount -o remount,rw -t "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    aget-object v0, v8, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " /system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dd if="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 6755 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dd if="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 6755 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/apkol/root/a/r;->a(Ljava/lang/StackTraceElement;)V

    .line 193
    const-string v0, "/system/bin/sdxpmgr"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Lcom/apkol/utils/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_1
    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 201
    iget-object v0, p0, Lcom/apkol/root/a/r;->e:Ljava/lang/String;

    const-string v1, "rootThread sleep suc"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    :goto_2
    invoke-static {}, Lcom/apkol/root/b/k;->c()Z

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    iput-boolean v0, v1, Lcom/apkol/root/AssistConst;->a:Z

    .line 212
    :cond_0
    return v0

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " mount -o remount rw /system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 197
    iget-object v1, p0, Lcom/apkol/root/a/r;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleRoot e ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :catch_1
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 205
    iget-object v1, p0, Lcom/apkol/root/a/r;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rootThread sleep fail e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic i(Lcom/apkol/root/a/r;)Z
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/apkol/root/a/r;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/apkol/root/a/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/apkol/root/a/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/apkol/root/a/r;->e:Ljava/lang/String;

    const-string v1, "start createTimer"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/apkol/root/a/r;->k()V

    .line 218
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/r;->i:Ljava/util/Timer;

    .line 219
    iget-object v0, p0, Lcom/apkol/root/a/r;->i:Ljava/util/Timer;

    new-instance v1, Lcom/apkol/root/a/v;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/v;-><init>(Lcom/apkol/root/a/r;)V

    .line 238
    iget-object v2, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->af:I

    int-to-long v2, v2

    .line 219
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 239
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/apkol/root/a/r;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/apkol/root/a/r;->e:Ljava/lang/String;

    const-string v1, "cancleTimer Timer"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/apkol/root/a/r;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/a/r;->i:Ljava/util/Timer;

    .line 247
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/apkol/root/a/r;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/r;->f:Lcom/apkol/root/a/ad;

    .line 97
    iget-object v2, p0, Lcom/apkol/root/a/r;->q:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->aa:I

    .line 98
    const-string v3, ""

    .line 96
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/t;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/t;-><init>(Lcom/apkol/root/a/r;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/apkol/root/a/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method
