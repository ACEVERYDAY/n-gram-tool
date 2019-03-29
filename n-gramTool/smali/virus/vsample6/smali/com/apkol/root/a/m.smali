.class public Lcom/apkol/root/a/m;
.super Lcom/apkol/root/a/y;
.source "Middle.java"

# interfaces
.implements Lcom/apkol/root/a/e;
.implements Lcom/apkol/root/a/x;


# instance fields
.field private final e:Ljava/lang/String;

.field private f:Lcom/apkol/root/a/ad;

.field private g:Landroid/content/Context;

.field private h:Landroid/content/res/Resources;

.field private i:Ljava/lang/Thread;

.field private j:Ljava/util/Timer;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private r:Lcom/apkol/root/AssistConst;

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apkol/root/a/ad;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/apkol/root/a/y;-><init>(Landroid/content/Context;)V

    .line 27
    const-class v0, Lcom/apkol/root/a/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/apkol/root/a/m;->i:Ljava/lang/Thread;

    .line 34
    iput-object v1, p0, Lcom/apkol/root/a/m;->j:Ljava/util/Timer;

    .line 35
    iput-object v1, p0, Lcom/apkol/root/a/m;->k:Ljava/util/ArrayList;

    .line 38
    iput v2, p0, Lcom/apkol/root/a/m;->m:I

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/a/m;->n:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/apkol/root/a/m;->o:I

    .line 42
    iput v2, p0, Lcom/apkol/root/a/m;->p:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/apkol/root/a/m;->q:I

    .line 45
    iput-object v1, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    .line 47
    new-instance v0, Lcom/apkol/root/a/n;

    invoke-direct {v0, p0}, Lcom/apkol/root/a/n;-><init>(Lcom/apkol/root/a/m;)V

    iput-object v0, p0, Lcom/apkol/root/a/m;->s:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/apkol/root/a/m;->g:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/m;->h:Landroid/content/res/Resources;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/m;->k:Ljava/util/ArrayList;

    .line 92
    iput-object p2, p0, Lcom/apkol/root/a/m;->f:Lcom/apkol/root/a/ad;

    .line 93
    iput v2, p0, Lcom/apkol/root/a/m;->l:I

    .line 95
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/a/m;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/apkol/root/a/m;->l:I

    return v0
.end method

.method static synthetic a(Lcom/apkol/root/a/m;I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/apkol/root/a/m;->l:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ".apkol_root1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ".apkol_root.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 0777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "chmod 0777 "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {}, Lcom/apkol/utils/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v0, v2

    :goto_0
    if-lt v0, v7, :cond_3

    .line 211
    :cond_0
    iget v0, p0, Lcom/apkol/root/a/m;->l:I

    if-ne v0, v10, :cond_2

    .line 212
    const/4 v0, 0x0

    .line 214
    iget-object v6, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "chmodRoot= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :try_start_0
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {p0, v6}, Lcom/apkol/root/a/m;->a(Ljava/lang/StackTraceElement;)V

    .line 217
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :goto_1
    iget-object v1, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmodRootSH= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :try_start_1
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {p0, v1}, Lcom/apkol/root/a/m;->a(Ljava/lang/StackTraceElement;)V

    .line 225
    const/16 v1, 0x2710

    invoke-static {v5, v1}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 231
    :goto_2
    const-string v1, "null"

    move v1, v2

    .line 232
    :goto_3
    const/4 v5, 0x3

    if-lt v1, v5, :cond_4

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    iget-boolean v0, v0, Lcom/apkol/root/AssistConst;->a:Z

    if-nez v0, :cond_2

    .line 250
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 251
    iput v2, v0, Landroid/os/Message;->what:I

    .line 252
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 253
    const-string v1, "run middle fail"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lcom/apkol/root/a/m;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    iget-object v0, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    const-string v1, "No Root"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_2
    return-void

    .line 207
    :cond_3
    aget-object v8, v6, v0

    .line 208
    iget-object v9, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 220
    iget-object v6, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "chmodRootSH e1 ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :catch_1
    move-exception v1

    .line 228
    iget-object v5, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmodRootSH e1 ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 233
    :cond_4
    if-nez v1, :cond_5

    .line 234
    const-string v5, "4"

    .line 235
    invoke-direct {p0, p1}, Lcom/apkol/root/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-direct {p0, v0, v5}, Lcom/apkol/root/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    :goto_4
    iget-object v5, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    iget-boolean v5, v5, Lcom/apkol/root/AssistConst;->a:Z

    if-nez v5, :cond_1

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 237
    :cond_5
    if-ne v1, v10, :cond_6

    .line 238
    const-string v5, "3"

    .line 239
    invoke-direct {p0, p1}, Lcom/apkol/root/a/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-direct {p0, v0, v5}, Lcom/apkol/root/a/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    .line 242
    :cond_6
    invoke-direct {p0, v3, v4, v0}, Lcom/apkol/root/a/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 292
    move v1, v0

    .line 293
    :goto_0
    const/4 v0, 0x3

    if-lt v1, v0, :cond_0

    .line 368
    :goto_1
    return-void

    .line 294
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 339
    :goto_2
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 340
    iget-object v0, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    const-string v2, "rootThread sleep suc"

    invoke-static {v0, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_3
    :try_start_1
    invoke-static {}, Lcom/apkol/root/b/k;->c()Z

    move-result v0

    .line 347
    if-eqz v0, :cond_1

    .line 348
    iget-object v2, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    iput-boolean v0, v2, Lcom/apkol/root/AssistConst;->a:Z

    .line 349
    iget-object v0, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    const-string v2, "Yes Root"

    invoke-static {v0, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "model="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apkol/utils/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    const-string v2, ", displayid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    iput-object v0, p0, Lcom/apkol/root/a/m;->a:Ljava/lang/String;

    .line 354
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 355
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 356
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 357
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    iget-object v1, p0, Lcom/apkol/root/a/m;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    iget-object v1, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "executeRootAct ex ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 297
    :pswitch_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    const-string v2, " f0h5zguZ9aJXbCZExMaN2kDhh6V0Uw== /system/bin/sh "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v2, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "i="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rootCmd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/apkol/root/a/m;->a(Ljava/lang/StackTraceElement;)V

    .line 302
    const/16 v2, 0x7530

    invoke-static {v0, v2}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p3

    goto/16 :goto_2

    .line 303
    :catch_1
    move-exception v0

    .line 305
    :try_start_3
    iget-object v2, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmodOneRom e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object p3

    goto/16 :goto_2

    .line 311
    :pswitch_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    const-string v2, " al1s7jBFNtn9faBmC0Jb9A9Ns1GZSg== /system/bin/sh "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v2, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "i="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rootCmd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/apkol/root/a/m;->a(Ljava/lang/StackTraceElement;)V

    .line 316
    const/16 v2, 0x7530

    invoke-static {v0, v2}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object p3

    goto/16 :goto_2

    .line 317
    :catch_2
    move-exception v0

    .line 319
    :try_start_5
    iget-object v2, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmodOneRom e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object p3

    goto/16 :goto_2

    .line 325
    :pswitch_2
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    const-string v2, " HygZRm2IHTKWpp7Hll/sS0uY66xdcw== /system/bin/sh "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v2, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "i="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rootCmd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/apkol/root/a/m;->a(Ljava/lang/StackTraceElement;)V

    .line 330
    const/16 v2, 0x7530

    invoke-static {v0, v2}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object p3

    goto/16 :goto_2

    .line 331
    :catch_3
    move-exception v0

    .line 333
    :try_start_7
    iget-object v2, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmodOneRom e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_2

    .line 341
    :catch_4
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 344
    iget-object v2, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rootThread sleep fail e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 361
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v2, p0, Lcom/apkol/root/a/m;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/m;->a:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 293
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 262
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 263
    iget-object v0, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    const-string v1, "rootThread sleep suc"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    invoke-static {}, Lcom/apkol/root/b/k;->c()Z

    move-result v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    iput-boolean v0, v1, Lcom/apkol/root/AssistConst;->a:Z

    .line 272
    iget-object v1, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    const-string v2, "Yes Root"

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "model="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apkol/utils/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    const-string v2, ", displayid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    iput-object v1, p0, Lcom/apkol/root/a/m;->a:Ljava/lang/String;

    .line 277
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 278
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 279
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 280
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    iget-object v2, p0, Lcom/apkol/root/a/m;->s:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 286
    :goto_1
    return v0

    .line 264
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 267
    iget-object v1, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

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

    goto :goto_0

    .line 283
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/apkol/root/a/m;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apkol/root/a/m;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 371
    iget-object v0, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "miroot"

    .line 372
    iget-object v1, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ".new_apkol_root1"

    .line 373
    iget-object v2, p0, Lcom/apkol/root/a/m;->k:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-direct {p0, v0, v1}, Lcom/apkol/root/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 375
    iget-object v2, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "copyRootFile miRootBool ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "chmod 0777 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmodMiRoot= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :try_start_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/apkol/root/a/m;->a(Ljava/lang/StackTraceElement;)V

    .line 383
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ".new_apkol_root1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 391
    const-string v1, " Edward /system/bin/sh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ".apkol_root.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fsafasddfssdf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/apkol/root/a/m;->a(Ljava/lang/StackTraceElement;)V

    .line 394
    const v1, 0x15f90

    invoke-static {v0, v1}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 400
    :goto_1
    return-object v0

    .line 384
    :catch_0
    move-exception v0

    .line 386
    iget-object v1, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmodMiRoot e1 ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :catch_1
    move-exception v0

    .line 397
    iget-object v1, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmodOneRom e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/apkol/root/a/m;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/apkol/root/a/m;->k()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/apkol/root/a/m;->g:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/apkol/root/b/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/apkol/root/a/m;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/apkol/root/a/m;->g:Landroid/content/Context;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 404
    iget-object v0, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "newrealroot"

    .line 405
    iget-object v1, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ".new_apkol_root2"

    .line 406
    iget-object v2, p0, Lcom/apkol/root/a/m;->k:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-direct {p0, v0, v1}, Lcom/apkol/root/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 408
    iget-object v1, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyRootFile newRealBool ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ".apkol_root.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, ".new_apkol_root2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "chmod 0777 "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v3, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chmodNewRootSH= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :try_start_0
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/apkol/root/a/m;->a(Ljava/lang/StackTraceElement;)V

    .line 418
    const/16 v3, 0x2710

    invoke-static {v0, v3}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    const-string v2, " 69jh1+fR6d7u3d0ETRE/PvoB7yyX2BD9HbDKBU0= /system/bin/sh "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/apkol/root/a/m;->a(Ljava/lang/StackTraceElement;)V

    .line 429
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 435
    :goto_1
    return-object v0

    .line 419
    :catch_0
    move-exception v0

    .line 421
    iget-object v3, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chmodNewRootSH e1 ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :catch_1
    move-exception v0

    .line 432
    iget-object v1, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmodOneRom e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/apkol/root/a/m;)Lcom/apkol/root/a/ad;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/apkol/root/a/m;->f:Lcom/apkol/root/a/ad;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 439
    iget-object v0, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "realroot"

    .line 440
    iget-object v1, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ".apkol_root1"

    .line 441
    iget-object v2, p0, Lcom/apkol/root/a/m;->k:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-direct {p0, v0, v1}, Lcom/apkol/root/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 443
    iget-object v1, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyRootFile realBool ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "psneuter.script"

    .line 446
    iget-object v2, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, ".apkol_root.sh"

    .line 447
    iget-object v3, p0, Lcom/apkol/root/a/m;->k:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-direct {p0, v1, v2}, Lcom/apkol/root/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 449
    iget-object v2, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "copyRootFile scriptBool ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "install-recovery.sh"

    .line 452
    iget-object v3, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "install-recovery.sh"

    .line 453
    iget-object v4, p0, Lcom/apkol/root/a/m;->k:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-direct {p0, v2, v3}, Lcom/apkol/root/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 455
    iget-object v3, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "copyRootFile installBool ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v3, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "99SuperSUDaemon"

    .line 458
    iget-object v4, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "99SuperSUDaemon"

    .line 459
    iget-object v5, p0, Lcom/apkol/root/a/m;->k:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-direct {p0, v3, v4}, Lcom/apkol/root/a/m;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 461
    iget-object v4, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copyRootFile superBool ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/apkol/root/a/m;)Lcom/apkol/root/AssistConst;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    return-object v0
.end method

.method static synthetic f(Lcom/apkol/root/a/m;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/apkol/root/a/m;->i()V

    return-void
.end method

.method static synthetic g(Lcom/apkol/root/a/m;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/apkol/root/a/m;->j()V

    return-void
.end method

.method static synthetic h(Lcom/apkol/root/a/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/apkol/root/a/m;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/m;->f:Lcom/apkol/root/a/ad;

    .line 121
    iget-object v2, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->aa:I

    .line 122
    const-string v3, "\u6b63\u5728\u8f7d\u5165ROOT\u76f8\u5173\u5de5\u5177"

    .line 120
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/apkol/root/a/m;->d()V

    .line 131
    return-void
.end method

.method static synthetic i(Lcom/apkol/root/a/m;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/apkol/root/a/m;->s:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    const-string v1, "start createTimer"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/apkol/root/a/m;->k()V

    .line 158
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/m;->j:Ljava/util/Timer;

    .line 159
    iget-object v0, p0, Lcom/apkol/root/a/m;->j:Ljava/util/Timer;

    new-instance v1, Lcom/apkol/root/a/p;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/p;-><init>(Lcom/apkol/root/a/m;)V

    .line 178
    iget-object v2, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->af:I

    int-to-long v2, v2

    .line 159
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 179
    return-void
.end method

.method static synthetic j(Lcom/apkol/root/a/m;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/apkol/root/a/m;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/m;->k:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/a/m;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/apkol/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-direct {p0, v0}, Lcom/apkol/root/a/m;->d(Ljava/lang/String;)Z

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HandleRoot copy ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lcom/apkol/root/a/m;->a(Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 191
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 192
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 193
    const-string v1, "Run Middle copy Fail"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/apkol/root/a/m;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/apkol/root/a/m;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    const-string v1, "cancleTimer Timer"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/apkol/root/a/m;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/a/m;->j:Ljava/util/Timer;

    .line 485
    :cond_0
    return-void
.end method

.method private l()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    const-string v1, "cleanRootData"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/q;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/q;-><init>(Lcom/apkol/root/a/m;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 530
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 531
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/apkol/root/a/m;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/m;->f:Lcom/apkol/root/a/ad;

    .line 101
    iget-object v2, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->aa:I

    .line 102
    const-string v3, "common"

    .line 100
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/apkol/root/a/m;->h()V

    .line 114
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ab:I

    if-ne p1, v0, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/apkol/root/a/m;->d()V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ac:I

    if-ne p1, v0, :cond_3

    .line 495
    if-nez p2, :cond_2

    const-string p2, "LoadTool Fail"

    .line 496
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 497
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 498
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 499
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 500
    iget-object v1, p0, Lcom/apkol/root/a/m;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->aa:I

    if-ne p1, v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/apkol/root/a/m;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/m;->f:Lcom/apkol/root/a/ad;

    invoke-static {v0, v1, p1, p2}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/apkol/root/a/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/a/m;->l:I

    .line 537
    invoke-direct {p0}, Lcom/apkol/root/a/m;->k()V

    .line 539
    :try_start_0
    invoke-direct {p0}, Lcom/apkol/root/a/m;->l()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 542
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 137
    iget-object v0, p0, Lcom/apkol/root/a/m;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/m;->f:Lcom/apkol/root/a/ad;

    .line 138
    iget-object v2, p0, Lcom/apkol/root/a/m;->r:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->aa:I

    .line 139
    const-string v3, "\u6267\u884c\u666e\u901aROOT"

    .line 137
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/o;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/o;-><init>(Lcom/apkol/root/a/m;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/apkol/root/a/m;->i:Ljava/lang/Thread;

    .line 152
    iget-object v0, p0, Lcom/apkol/root/a/m;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method
