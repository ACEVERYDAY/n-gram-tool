.class public Lcom/apkol/root/a/f;
.super Lcom/apkol/root/a/y;
.source "FramaRoot.java"

# interfaces
.implements Lcom/apkol/root/a/x;


# instance fields
.field private final e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Landroid/content/res/Resources;

.field private h:Lcom/apkol/root/a/ad;

.field private i:Lcom/apkol/root/AssistConst;

.field private j:Ljava/util/Timer;

.field private k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Z

.field private t:Z

.field private final u:I

.field private v:Ljava/util/Timer;

.field private w:Ljava/lang/Thread;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apkol/root/a/ad;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/apkol/root/a/y;-><init>(Landroid/content/Context;)V

    .line 33
    const-class v0, Lcom/apkol/root/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    .line 41
    iput-object v1, p0, Lcom/apkol/root/a/f;->j:Ljava/util/Timer;

    .line 44
    iput v2, p0, Lcom/apkol/root/a/f;->l:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/a/f;->m:I

    .line 47
    iput v3, p0, Lcom/apkol/root/a/f;->n:I

    .line 48
    iput v2, p0, Lcom/apkol/root/a/f;->o:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/apkol/root/a/f;->p:I

    .line 51
    iput-object v1, p0, Lcom/apkol/root/a/f;->q:Ljava/util/ArrayList;

    .line 57
    iput v3, p0, Lcom/apkol/root/a/f;->u:I

    .line 59
    iput-object v1, p0, Lcom/apkol/root/a/f;->v:Ljava/util/Timer;

    .line 61
    iput-object v1, p0, Lcom/apkol/root/a/f;->w:Ljava/lang/Thread;

    .line 63
    iput-object v1, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/apkol/root/a/g;

    invoke-direct {v0, p0}, Lcom/apkol/root/a/g;-><init>(Lcom/apkol/root/a/f;)V

    iput-object v0, p0, Lcom/apkol/root/a/f;->y:Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/f;->g:Landroid/content/res/Resources;

    .line 107
    iput-object p2, p0, Lcom/apkol/root/a/f;->h:Lcom/apkol/root/a/ad;

    .line 108
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/f;->q:Ljava/util/ArrayList;

    .line 111
    iput v2, p0, Lcom/apkol/root/a/f;->k:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/a/f;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/apkol/root/a/f;->k:I

    return v0
.end method

.method static synthetic a(Lcom/apkol/root/a/f;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/apkol/root/a/f;->k:I

    return-void
.end method

.method static synthetic a(Lcom/apkol/root/a/f;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/apkol/root/a/f;->a(Ljava/util/Timer;)V

    return-void
.end method

.method private a(Ljava/util/Timer;)V
    .locals 2

    .prologue
    .line 427
    if-eqz p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    const-string v1, "cancleTimer Timer"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 432
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "frameroot.apk"

    .line 186
    iget-object v1, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "frameroot.apk"

    .line 187
    iget-object v2, p0, Lcom/apkol/root/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-direct {p0, v0, v1}, Lcom/apkol/root/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apkol/root/a/f;->r:Z

    .line 189
    iget-object v0, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyRootFile framaApk ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/apkol/root/a/f;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "libframa"

    .line 192
    iget-object v1, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "libframa"

    .line 193
    iget-object v2, p0, Lcom/apkol/root/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-direct {p0, v0, v1}, Lcom/apkol/root/a/f;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apkol/root/a/f;->s:Z

    .line 195
    iget-object v0, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyRootFile framaLibs ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/apkol/root/a/f;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "sploit.jar"

    .line 198
    iget-object v1, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "sploit.jar"

    .line 199
    iget-object v2, p0, Lcom/apkol/root/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-direct {p0, v0, v1}, Lcom/apkol/root/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apkol/root/a/f;->t:Z

    .line 201
    iget-object v0, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyRootFile framaJar ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/apkol/root/a/f;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-boolean v0, p0, Lcom/apkol/root/a/f;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apkol/root/a/f;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apkol/root/a/f;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/apkol/root/b/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/apkol/root/a/f;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/apkol/root/a/f;->j:Ljava/util/Timer;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "dalvik-cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 226
    :goto_0
    if-eqz v0, :cond_2

    .line 227
    iget v0, p0, Lcom/apkol/root/a/f;->k:I

    if-ne v0, v1, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lcom/apkol/root/a/f;->c(Ljava/lang/String;)V

    .line 239
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 224
    goto :goto_0

    .line 231
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 232
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 233
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 234
    const-string v1, "run Frama fail mkResult= false"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lcom/apkol/root/a/f;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    iget-object v0, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    const-string v1, "No Root"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "lib.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "lib.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v0, v1, v2}, Lcom/apkol/root/b/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/apkol/root/a/f;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/apkol/root/a/f;->v:Ljava/util/Timer;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "frameroot.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "chmod 0777 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v2, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmodApk= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :try_start_0
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/apkol/root/a/f;->a(Ljava/lang/StackTraceElement;)V

    .line 247
    const/16 v2, 0x1388

    invoke-static {v0, v2}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

    const-string v2, "com.alephzain.framaroot"

    invoke-static {v0, v2}, Lcom/apkol/root/b/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/apkol/root/a/f;->j()V

    .line 280
    :goto_1
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 250
    iget-object v2, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmodApk e1 ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/apkol/root/a/f;->h:Lcom/apkol/root/a/ad;

    .line 256
    iget-object v3, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    iget v3, v3, Lcom/apkol/root/AssistConst;->aa:I

    .line 257
    iget-object v4, p0, Lcom/apkol/root/a/f;->g:Landroid/content/res/Resources;

    const v5, 0x7f050103

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-static {v0, v2, v3, v4}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/apkol/root/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 261
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/f;->v:Ljava/util/Timer;

    .line 262
    iget-object v0, p0, Lcom/apkol/root/a/f;->v:Ljava/util/Timer;

    new-instance v1, Lcom/apkol/root/a/j;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/j;-><init>(Lcom/apkol/root/a/f;)V

    .line 278
    const-wide/32 v2, 0x493e0

    .line 262
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/apkol/root/a/f;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 127
    iget-object v0, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/f;->h:Lcom/apkol/root/a/ad;

    .line 128
    iget-object v2, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->aa:I

    .line 129
    iget-object v3, p0, Lcom/apkol/root/a/f;->g:Landroid/content/res/Resources;

    const v4, 0x7f050102

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/h;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/h;-><init>(Lcom/apkol/root/a/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    return-void
.end method

.method static synthetic e(Lcom/apkol/root/a/f;)Lcom/apkol/root/a/ad;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/apkol/root/a/f;->h:Lcom/apkol/root/a/ad;

    return-object v0
.end method

.method static synthetic f(Lcom/apkol/root/a/f;)Lcom/apkol/root/AssistConst;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    return-object v0
.end method

.method static synthetic g(Lcom/apkol/root/a/f;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/apkol/root/a/f;->h()V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    const-string v1, "start createTimer"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/apkol/root/a/f;->j:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/apkol/root/a/f;->a(Ljava/util/Timer;)V

    .line 145
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/f;->j:Ljava/util/Timer;

    .line 146
    iget-object v0, p0, Lcom/apkol/root/a/f;->j:Ljava/util/Timer;

    new-instance v1, Lcom/apkol/root/a/i;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/i;-><init>(Lcom/apkol/root/a/f;)V

    .line 165
    iget-object v2, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->af:I

    int-to-long v2, v2

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 166
    return-void
.end method

.method static synthetic h(Lcom/apkol/root/a/f;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/apkol/root/a/f;->i()V

    return-void
.end method

.method static synthetic i(Lcom/apkol/root/a/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

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

    .line 170
    invoke-direct {p0, v0}, Lcom/apkol/root/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    .line 171
    iget-object v2, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HandleRoot copy ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-eqz v1, :cond_0

    .line 173
    invoke-direct {p0, v0}, Lcom/apkol/root/a/f;->b(Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 176
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 177
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Run Frama copy Fail mFramaApk ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/apkol/root/a/f;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    const-string v2, " mFramaLibs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apkol/root/a/f;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFramaJar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apkol/root/a/f;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/apkol/root/a/f;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic j(Lcom/apkol/root/a/f;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/apkol/root/a/f;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 318
    iget-object v0, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/f;->h:Lcom/apkol/root/a/ad;

    .line 319
    iget-object v2, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->aa:I

    .line 320
    iget-object v3, p0, Lcom/apkol/root/a/f;->g:Landroid/content/res/Resources;

    const v4, 0x7f050104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    const-string v1, "Gimli"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    const-string v1, "Boromir"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    const-string v1, "Aragorn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    const-string v1, "Gandalf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    const-string v1, "Barahir"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    const-string v1, "Sam"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    const-string v1, "Faramir"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    const-string v1, "Frodo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    const-string v1, "Pippin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    const-string v1, "Legolas"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    const-string v1, "Merry"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/k;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/k;-><init>(Lcom/apkol/root/a/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/apkol/root/a/f;->w:Ljava/lang/Thread;

    .line 417
    iget-object v0, p0, Lcom/apkol/root/a/f;->w:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 418
    return-void
.end method

.method static synthetic k(Lcom/apkol/root/a/f;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/apkol/root/a/f;->x:Ljava/util/List;

    return-object v0
.end method

.method private k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    const-string v1, "cleanRootData"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/l;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/l;-><init>(Lcom/apkol/root/a/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 466
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 467
    return-void
.end method

.method static synthetic l(Lcom/apkol/root/a/f;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/apkol/root/a/f;->w:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic m(Lcom/apkol/root/a/f;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/apkol/root/a/f;->q:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/f;->h:Lcom/apkol/root/a/ad;

    .line 120
    iget-object v2, p0, Lcom/apkol/root/a/f;->i:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->aa:I

    .line 121
    iget-object v3, p0, Lcom/apkol/root/a/f;->g:Landroid/content/res/Resources;

    const v4, 0x7f050101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/apkol/root/a/f;->d()V

    .line 124
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/apkol/root/a/f;->f:Landroid/content/Context;

    const-string v1, "com.alephzain.framaroot"

    invoke-static {v0, v1}, Lcom/apkol/root/b/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-direct {p0}, Lcom/apkol/root/a/f;->j()V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 480
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 481
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 482
    const-string v1, "Run Frama cancle Install"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 483
    iget-object v1, p0, Lcom/apkol/root/a/f;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 283
    const-string v1, "application/vnd.android.package-archive"

    .line 284
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 286
    const-string v1, "installApk"

    const-string v2, "failure, File does not exist"

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return v0

    .line 289
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 290
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    check-cast p1, Landroid/app/Activity;

    .line 294
    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 295
    const-string v0, "installApk"

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 307
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 308
    const/16 v2, 0x40

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 309
    invoke-static {v0}, Lcom/apkol/utils/b;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 310
    :try_start_1
    iget-object v1, p0, Lcom/apkol/root/a/f;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "md5 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    :goto_0
    return-object v0

    .line 311
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 312
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 311
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/a/f;->k:I

    .line 438
    iget-object v0, p0, Lcom/apkol/root/a/f;->j:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/apkol/root/a/f;->a(Ljava/util/Timer;)V

    .line 439
    iget-object v0, p0, Lcom/apkol/root/a/f;->v:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/apkol/root/a/f;->a(Ljava/util/Timer;)V

    .line 441
    :try_start_0
    invoke-direct {p0}, Lcom/apkol/root/a/f;->k()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
