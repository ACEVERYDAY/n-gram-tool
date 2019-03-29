.class public Lcom/apkol/root/feature/a;
.super Ljava/lang/Object;
.source "CleanRootFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/root/feature/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Landroid/content/Context;

.field private g:Landroid/content/res/Resources;

.field private h:Lcom/apkol/root/feature/e;

.field private i:Ljava/util/Timer;

.field private j:Lcom/apkol/root/AssistConst;

.field private final k:[Ljava/lang/String;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apkol/root/feature/e;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/apkol/root/feature/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/a;->a:Ljava/lang/String;

    .line 28
    iput v3, p0, Lcom/apkol/root/feature/a;->c:I

    .line 29
    iput v4, p0, Lcom/apkol/root/feature/a;->d:I

    .line 31
    iput v5, p0, Lcom/apkol/root/feature/a;->e:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    .line 41
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.b1"

    aput-object v2, v0, v1

    .line 42
    const-string v1, "com.b2"

    aput-object v1, v0, v3

    const-string v1, "com.b3"

    aput-object v1, v0, v4

    .line 43
    const-string v1, "com.b4"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "com.b5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 44
    const-string v2, "com.b6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.b7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 45
    const-string v2, "com.b8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.b9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 46
    const-string v2, "com.b10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.b11"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/apkol/root/feature/a;->k:[Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/apkol/root/feature/b;

    invoke-direct {v0, p0}, Lcom/apkol/root/feature/b;-><init>(Lcom/apkol/root/feature/a;)V

    iput-object v0, p0, Lcom/apkol/root/feature/a;->l:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/apkol/root/feature/a;->f:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/a;->g:Landroid/content/res/Resources;

    .line 74
    iput-object p2, p0, Lcom/apkol/root/feature/a;->h:Lcom/apkol/root/feature/e;

    .line 75
    iput v3, p0, Lcom/apkol/root/feature/a;->b:I

    .line 77
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/feature/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/apkol/root/feature/a;->b:I

    return v0
.end method

.method static synthetic a(Lcom/apkol/root/feature/a;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/apkol/root/feature/a;->b:I

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    iget-object v1, v0, Lcom/apkol/root/AssistConst;->S:Ljava/lang/String;

    .line 285
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " mount -o remount rw /data"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " rm "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "com.qihoo.root-1.apk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    const-string v0, "pm  uninstall com.qihoo.root\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v0, "pm  uninstall com.kingroot.kinguser\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    iget v0, p0, Lcom/apkol/root/feature/a;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 297
    const-string v0, "su2"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/apkol/utils/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 299
    :cond_0
    return-void

    .line 288
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " mount -o remount rw /system"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " rm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/feature/a$a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 188
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/apkol/root/feature/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/root/b/g;->a(Landroid/content/Context;)Lcom/apkol/root/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/root/b/g;->a()[Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mount -o remount,rw -t "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 192
    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " /system"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    iget v0, p0, Lcom/apkol/root/feature/a;->b:I

    if-eq v0, v5, :cond_0

    .line 209
    const-string v0, "su2"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/apkol/utils/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 211
    :cond_0
    return-void

    .line 194
    :cond_1
    const-string v0, "mount -o remount rw /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 196
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/a$a;

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rm "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/apkol/root/feature/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 200
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rm "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 204
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/a$a;

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pm  uninstall "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/apkol/root/feature/a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method static synthetic b(Lcom/apkol/root/feature/a;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/apkol/root/feature/a;->i:Ljava/util/Timer;

    return-object v0
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/feature/a$a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 216
    iget-object v0, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    iget-object v1, v0, Lcom/apkol/root/AssistConst;->S:Ljava/lang/String;

    .line 218
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    iget-object v0, p0, Lcom/apkol/root/feature/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/root/b/g;->a(Landroid/content/Context;)Lcom/apkol/root/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/root/b/g;->a()[Ljava/lang/String;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_1

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "su "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mount -o remount,rw -t "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " /system"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 241
    iget v0, p0, Lcom/apkol/root/feature/a;->b:I

    if-eq v0, v6, :cond_0

    .line 242
    const-string v0, "su2"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/apkol/utils/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 245
    :cond_0
    return-void

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "su "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mount -o remount rw /system"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 226
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 228
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/a$a;

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "su "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/apkol/root/feature/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 232
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "su "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 237
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/a$a;

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pm  uninstall "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/apkol/root/feature/a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method private c()V
    .locals 4

    .prologue
    const/16 v3, 0x5c

    .line 108
    iget-object v0, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    iget-boolean v0, v0, Lcom/apkol/root/AssistConst;->a:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/apkol/root/feature/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    iget-object v1, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const-string v2, "\u6e05root\u5931\u8d25"

    .line 109
    invoke-static {v0, v3, v1, v2}, Lcom/apkol/root/v;->a(Landroid/content/Context;IILjava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x6000

    iput v1, v0, Lcom/apkol/root/RootActivity$a;->a:I

    .line 114
    .line 115
    iget-object v1, p0, Lcom/apkol/root/feature/a;->h:Lcom/apkol/root/feature/e;

    invoke-interface {v1, v0}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    .line 125
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/feature/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    iget-object v1, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    const-string v2, "\u6210\u529f\u6e05root"

    .line 117
    invoke-static {v0, v3, v1, v2}, Lcom/apkol/root/v;->a(Landroid/content/Context;IILjava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x5000

    iput v1, v0, Lcom/apkol/root/RootActivity$a;->a:I

    .line 122
    .line 123
    iget-object v1, p0, Lcom/apkol/root/feature/a;->h:Lcom/apkol/root/feature/e;

    invoke-interface {v1, v0}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/apkol/root/feature/a;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/apkol/root/feature/a;->e()V

    return-void
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/feature/a$a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 249
    iget-object v0, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    iget-object v1, v0, Lcom/apkol/root/AssistConst;->S:Ljava/lang/String;

    .line 251
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 253
    iget-object v0, p0, Lcom/apkol/root/feature/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/root/b/g;->a(Landroid/content/Context;)Lcom/apkol/root/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/root/b/g;->a()[Ljava/lang/String;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_1

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " mount -o remount,rw -t "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 256
    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " /system"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 268
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 272
    iget v0, p0, Lcom/apkol/root/feature/a;->b:I

    if-eq v0, v6, :cond_0

    .line 273
    const-string v0, "su2"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/apkol/utils/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 275
    :cond_0
    return-void

    .line 258
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " mount -o remount rw /system"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 260
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/a$a;

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " rm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/apkol/root/feature/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 264
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " rm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 268
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/a$a;

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pm  uninstall "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/apkol/root/feature/a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method private d()V
    .locals 4

    .prologue
    .line 128
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/feature/a;->i:Ljava/util/Timer;

    .line 129
    iget-object v0, p0, Lcom/apkol/root/feature/a;->i:Ljava/util/Timer;

    new-instance v1, Lcom/apkol/root/feature/d;

    invoke-direct {v1, p0}, Lcom/apkol/root/feature/d;-><init>(Lcom/apkol/root/feature/a;)V

    .line 137
    iget-object v2, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->af:I

    int-to-long v2, v2

    .line 129
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 138
    return-void
.end method

.method static synthetic d(Lcom/apkol/root/feature/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/apkol/root/feature/a;->c()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/apkol/root/feature/a;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/apkol/root/feature/a;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/feature/a;->i:Ljava/util/Timer;

    .line 145
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/apkol/root/feature/a;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/apkol/root/feature/a;->f()V

    return-void
.end method

.method static synthetic f(Lcom/apkol/root/feature/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/apkol/root/feature/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/apkol/root/feature/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/root/b/k;->c(Landroid/content/Context;)V

    .line 156
    invoke-direct {p0}, Lcom/apkol/root/feature/a;->h()Ljava/util/ArrayList;

    move-result-object v0

    .line 157
    invoke-direct {p0}, Lcom/apkol/root/feature/a;->g()Ljava/util/ArrayList;

    move-result-object v1

    .line 159
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 160
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/apkol/root/feature/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 163
    invoke-direct {p0, v0, v1}, Lcom/apkol/root/feature/a;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/apkol/root/feature/a;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 168
    :cond_0
    invoke-direct {p0, v0}, Lcom/apkol/root/feature/a;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_1
    :goto_0
    iget v0, p0, Lcom/apkol/root/feature/a;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 182
    iget-object v0, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    invoke-static {}, Lcom/apkol/root/b/k;->c()Z

    move-result v1

    iput-boolean v1, v0, Lcom/apkol/root/AssistConst;->a:Z

    .line 184
    :cond_2
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    iget-object v1, p0, Lcom/apkol/root/feature/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ex ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/apkol/root/feature/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/apkol/root/feature/a;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private g()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/feature/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    iget-object v0, p0, Lcom/apkol/root/feature/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/root/b/k;->h(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 305
    iget-object v4, p0, Lcom/apkol/root/feature/a;->k:[Ljava/lang/String;

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v5, :cond_0

    .line 316
    return-object v2

    .line 305
    :cond_0
    aget-object v6, v4, v1

    .line 306
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 306
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/a/a;

    .line 307
    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 308
    new-instance v7, Lcom/apkol/root/feature/a$a;

    invoke-direct {v7}, Lcom/apkol/root/feature/a$a;-><init>()V

    .line 309
    iput-object v6, v7, Lcom/apkol/root/feature/a$a;->a:Ljava/lang/String;

    .line 310
    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/apkol/root/feature/a$a;->b:Ljava/lang/String;

    .line 311
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private h()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 321
    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/system/bin/"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "/system/xbin/"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 324
    const-string v4, "/system/sbin/"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "/sbin/"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "/vendor/bin/"

    aput-object v4, v2, v3

    .line 325
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 331
    return-object v1

    .line 326
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v2, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/apkol/root/feature/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x5c

    .line 85
    iget-object v2, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    const-string v3, "\u542f\u52a8\u6e05root"

    .line 84
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/v;->a(Landroid/content/Context;IILjava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/apkol/root/feature/a;->d()V

    .line 88
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/apkol/root/feature/a;->j:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x1000

    iput v1, v0, Lcom/apkol/root/RootActivity$a;->a:I

    .line 90
    .line 91
    iget-object v1, p0, Lcom/apkol/root/feature/a;->h:Lcom/apkol/root/feature/e;

    invoke-interface {v1, v0}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/feature/c;

    invoke-direct {v1, p0}, Lcom/apkol/root/feature/c;-><init>(Lcom/apkol/root/feature/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/feature/a;->b:I

    .line 341
    iget-object v0, p0, Lcom/apkol/root/feature/a;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/apkol/root/feature/a;->e()V

    .line 344
    :cond_0
    return-void
.end method
