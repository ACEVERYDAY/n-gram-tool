.class public Lcom/apkol/root/a/z;
.super Ljava/lang/Object;
.source "RootFactory.java"

# interfaces
.implements Lcom/apkol/root/a/ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/root/a/z$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/apkol/root/feature/e;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/res/Resources;

.field private e:Lcom/apkol/root/a/x;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Ljava/util/Timer;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apkol/root/a/z$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private final m:I

.field private final n:I

.field private o:Lcom/apkol/root/b/e;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/apkol/root/AssistConst;

.field private r:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "f"

    sput-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/apkol/root/feature/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/apkol/root/a/z;->f:I

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lcom/apkol/root/a/z;->g:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/apkol/root/a/z;->h:I

    .line 44
    iput-object v1, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/apkol/root/a/z;->k:I

    .line 49
    iput v2, p0, Lcom/apkol/root/a/z;->m:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/a/z;->n:I

    .line 53
    iput-object v1, p0, Lcom/apkol/root/a/z;->p:Ljava/util/ArrayList;

    .line 55
    iput-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    .line 57
    new-instance v0, Lcom/apkol/root/a/aa;

    invoke-direct {v0, p0}, Lcom/apkol/root/a/aa;-><init>(Lcom/apkol/root/a/z;)V

    iput-object v0, p0, Lcom/apkol/root/a/z;->r:Landroid/os/Handler;

    .line 89
    iput-object p1, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/z;->d:Landroid/content/res/Resources;

    .line 92
    iput-object p2, p0, Lcom/apkol/root/a/z;->b:Lcom/apkol/root/feature/e;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    .line 95
    iput v2, p0, Lcom/apkol/root/a/z;->l:I

    .line 97
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/a/z;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/apkol/root/a/z;->i:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(Lcom/apkol/root/a/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/apkol/root/a/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/apkol/root/a/z;->b(Ljava/lang/String;)Z

    .line 219
    iget v0, p0, Lcom/apkol/root/a/z;->k:I

    invoke-direct {p0, v0}, Lcom/apkol/root/a/z;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x3000

    iput v1, v0, Lcom/apkol/root/RootActivity$a;->a:I

    .line 223
    .line 225
    iget-object v1, p0, Lcom/apkol/root/a/z;->b:Lcom/apkol/root/feature/e;

    invoke-interface {v1, v0}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    .line 227
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/a/z;->l:I

    .line 229
    iget-object v0, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x5b

    .line 230
    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    const-string v3, "\u627e\u4e0d\u5230\u65b9\u6848\u53ef\u5e94\u7528\u4e8e\u6b64\u624b\u673a"

    .line 229
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    const-string v2, "\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 277
    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 289
    iget-object v2, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/apkol/root/a/z;->a(Ljava/util/List;)V

    .line 294
    :goto_1
    return v0

    .line 277
    :cond_0
    aget-object v5, v3, v2

    .line 278
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 279
    new-instance v6, Lcom/apkol/root/a/z$a;

    invoke-direct {v6}, Lcom/apkol/root/a/z$a;-><init>()V

    .line 280
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcom/apkol/root/a/z$a;->a:I

    .line 281
    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Lcom/apkol/root/a/z$a;->b:I

    .line 283
    iget v5, v6, Lcom/apkol/root/a/z$a;->b:I

    if-lez v5, :cond_1

    .line 284
    iget-object v5, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    sget-object v2, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "planOrder ex="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 294
    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 187
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/apkol/root/b/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/apkol/root/a/z;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/apkol/root/a/z;->g()V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    .line 380
    const/4 v0, 0x0

    .line 381
    iget-object v1, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    if-eqz v1, :cond_7

    .line 382
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    invoke-interface {v0}, Lcom/apkol/root/a/x;->e()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 385
    :goto_0
    invoke-direct {p0}, Lcom/apkol/root/a/z;->h()V

    .line 386
    if-nez p1, :cond_0

    const-string p1, ""

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ac:I

    if-ne p2, v0, :cond_3

    .line 389
    iget-object v3, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    iget v4, p0, Lcom/apkol/root/a/z;->k:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    iget v0, v0, Lcom/apkol/root/a/z$a;->a:I

    .line 390
    iget-object v4, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    invoke-static {v3, v0, v5, p1, v1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_1
    iget v0, p0, Lcom/apkol/root/a/z;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/apkol/root/a/z;->k:I

    .line 398
    const/4 v0, 0x0

    .line 400
    iget v1, p0, Lcom/apkol/root/a/z;->k:I

    iget-object v3, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 401
    iget v1, p0, Lcom/apkol/root/a/z;->k:I

    invoke-direct {p0, v1}, Lcom/apkol/root/a/z;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 408
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 409
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/a/z;->l:I

    .line 411
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 412
    const-string v1, "ROOT\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-static {}, Lcom/apkol/root/b/k;->b()Ljava/lang/String;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_6

    .line 415
    const-string v2, "existSu"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-static {v1}, Lcom/apkol/utils/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    iget-object v2, v2, Lcom/apkol/root/AssistConst;->F:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 419
    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    iget-object v2, v2, Lcom/apkol/root/AssistConst;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 420
    const-string v1, "md5\u76f8\u540c\uff0csu\u653e\u7f6e\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    :goto_3
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v1

    .line 432
    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x3000

    iput v2, v1, Lcom/apkol/root/RootActivity$a;->a:I

    .line 433
    .line 435
    iget-object v2, p0, Lcom/apkol/root/a/z;->b:Lcom/apkol/root/feature/e;

    invoke-interface {v2, v1}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    .line 436
    iget-object v1, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x5b

    .line 437
    iget-object v3, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "ROOT\u5931\u8d25\uff1a\u6240\u6709\u6d41\u7a0b\u90fd\u5df2\u5b8c\u6210"

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v1, v2, v5, v3, v0}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_2
    return-void

    .line 392
    :cond_3
    iget-object v3, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    iget v4, p0, Lcom/apkol/root/a/z;->k:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    iget v0, v0, Lcom/apkol/root/a/z$a;->a:I

    .line 393
    iget-object v4, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    .line 392
    invoke-static {v3, v0, v4, p1, v1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 405
    goto/16 :goto_2

    .line 423
    :cond_5
    const-string v1, "md5\u4e0d\u76f8\u540c,\u6709su\u5b58\u5728"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 427
    :cond_6
    const-string v1, "not existSu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private b(I)Z
    .locals 2

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, v1

    .line 249
    :goto_1
    return v0

    .line 242
    :cond_0
    iput p1, p0, Lcom/apkol/root/a/z;->k:I

    .line 243
    iget-object v0, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    iget v0, v0, Lcom/apkol/root/a/z$a;->a:I

    invoke-virtual {p0, v0}, Lcom/apkol/root/a/z;->a(I)Lcom/apkol/root/a/x;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_1

    .line 245
    const/4 v0, 0x1

    .line 246
    goto :goto_1

    .line 241
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/apkol/root/a/z;->o:Lcom/apkol/root/b/e;

    invoke-virtual {v0}, Lcom/apkol/root/b/e;->c()Lcom/apkol/root/b/e$a;

    move-result-object v0

    iget-object v0, v0, Lcom/apkol/root/b/e$a;->j:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/apkol/root/a/z;->o:Lcom/apkol/root/b/e;

    invoke-virtual {v1}, Lcom/apkol/root/b/e;->c()Lcom/apkol/root/b/e$a;

    move-result-object v1

    iget v1, v1, Lcom/apkol/root/b/e$a;->i:I

    .line 262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    invoke-direct {p0, v0, v1}, Lcom/apkol/root/a/z;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/apkol/root/a/z;)Lcom/apkol/root/AssistConst;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 443
    iput v5, p0, Lcom/apkol/root/a/z;->l:I

    .line 445
    const/4 v0, 0x0

    .line 446
    iget-object v1, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    if-eqz v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    invoke-interface {v0}, Lcom/apkol/root/a/x;->e()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 450
    :goto_0
    invoke-direct {p0}, Lcom/apkol/root/a/z;->h()V

    .line 452
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v0

    .line 453
    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x2000

    iput v2, v0, Lcom/apkol/root/RootActivity$a;->a:I

    .line 455
    iget-object v2, p0, Lcom/apkol/root/a/z;->b:Lcom/apkol/root/feature/e;

    invoke-interface {v2, v0}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    .line 458
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    iget-object v2, v0, Lcom/apkol/root/AssistConst;->o:Ljava/util/Map;

    iget-object v0, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    .line 459
    iget v3, p0, Lcom/apkol/root/a/z;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    iget v0, v0, Lcom/apkol/root/a/z$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 458
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    iget-object v2, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x5b

    .line 461
    iget-object v4, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    invoke-static {v2, v3, v5, v0, v1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    iget v2, p0, Lcom/apkol/root/a/z;->k:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    iget v0, v0, Lcom/apkol/root/a/z$a;->a:I

    .line 464
    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    invoke-static {v1, v0, v5, p1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;)V

    .line 465
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/apkol/root/a/z;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/apkol/root/a/z;->d:Landroid/content/res/Resources;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 468
    iput v5, p0, Lcom/apkol/root/a/z;->l:I

    .line 470
    const/4 v0, 0x0

    .line 471
    iget-object v1, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    if-eqz v1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    invoke-interface {v0}, Lcom/apkol/root/a/x;->e()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 475
    :goto_0
    invoke-direct {p0}, Lcom/apkol/root/a/z;->h()V

    .line 477
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v0

    .line 478
    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x4000

    iput v2, v0, Lcom/apkol/root/RootActivity$a;->a:I

    .line 480
    iget-object v2, p0, Lcom/apkol/root/a/z;->b:Lcom/apkol/root/feature/e;

    invoke-interface {v2, v0}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    .line 483
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    iget-object v2, v0, Lcom/apkol/root/AssistConst;->o:Ljava/util/Map;

    iget-object v0, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    .line 484
    iget v3, p0, Lcom/apkol/root/a/z;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    iget v0, v0, Lcom/apkol/root/a/z$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 483
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 485
    iget-object v2, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x5b

    .line 486
    iget-object v4, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    invoke-static {v2, v3, v5, v0, v1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    iget v2, p0, Lcom/apkol/root/a/z;->k:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    iget v0, v0, Lcom/apkol/root/a/z$a;->a:I

    .line 489
    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    invoke-static {v1, v0, v5, p1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;)V

    .line 490
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/apkol/root/a/z;)Lcom/apkol/root/feature/e;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/apkol/root/a/z;->b:Lcom/apkol/root/feature/e;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/ab;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/ab;-><init>(Lcom/apkol/root/a/z;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/z;->p:Ljava/util/ArrayList;

    .line 133
    iget-object v0, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/root/b/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v2

    iget-object v3, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/apkol/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "busybox"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "busybox"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 141
    iget-object v5, p0, Lcom/apkol/root/a/z;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-direct {p0, v0, v4}, Lcom/apkol/root/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 143
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "boxBool= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "boxBool= "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "chmod 0777 "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "busybox"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmodBusyBox= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    .line 150
    if-eqz v4, :cond_0

    .line 151
    const/16 v0, 0x2710

    :try_start_0
    invoke-static {v5, v0}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chmodBusyBox= = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "romt"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "romt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    iget-object v6, p0, Lcom/apkol/root/a/z;->p:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0, v0, v5}, Lcom/apkol/root/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 164
    sget-object v5, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "apkBool= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "apkBool= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "su"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "su"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    iget-object v5, p0, Lcom/apkol/root/a/z;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-direct {p0, v1, v2}, Lcom/apkol/root/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 171
    sget-object v5, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "suBool= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "suBool= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v5, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-static {v2}, Lcom/apkol/utils/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/apkol/root/AssistConst;->F:Ljava/lang/String;

    .line 176
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/apkol/root/a/z;->r:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    :goto_1
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 155
    sget-object v5, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmodBusyBox= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/a/z;->r:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    iget-object v0, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x5b

    .line 181
    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u62f7\u8d1d\u5de5\u5177\u5931\u8d25\uff0c\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v0, v1, v8, v2}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/apkol/root/a/z;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/apkol/root/a/z;->f()V

    return-void
.end method

.method static synthetic g(Lcom/apkol/root/a/z;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/apkol/root/a/z;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const v3, 0x7f0500ad

    const/4 v2, 0x5

    .line 196
    iput v3, p0, Lcom/apkol/root/a/z;->l:I

    .line 198
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x1000

    iput v1, v0, Lcom/apkol/root/RootActivity$a;->a:I

    .line 200
    .line 201
    iget-object v1, p0, Lcom/apkol/root/a/z;->b:Lcom/apkol/root/feature/e;

    invoke-interface {v1, v0}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    .line 202
    iget-object v0, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/root/b/e;->a(Landroid/content/Context;)Lcom/apkol/root/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/z;->o:Lcom/apkol/root/b/e;

    .line 203
    iget-object v0, p0, Lcom/apkol/root/a/z;->o:Lcom/apkol/root/b/e;

    invoke-virtual {v0}, Lcom/apkol/root/b/e;->c()Lcom/apkol/root/b/e$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/apkol/root/b/e$a;->a:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 205
    iput v2, v0, Landroid/os/Message;->what:I

    .line 206
    iget-object v1, p0, Lcom/apkol/root/a/z;->o:Lcom/apkol/root/b/e;

    invoke-virtual {v1}, Lcom/apkol/root/b/e;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lcom/apkol/root/a/z;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/a/z;->o:Lcom/apkol/root/b/e;

    iget-object v1, p0, Lcom/apkol/root/a/z;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/apkol/root/b/e;->a(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    invoke-interface {v0}, Lcom/apkol/root/a/x;->c()V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    .line 501
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    const-string v1, "cleanRootData"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/ac;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/ac;-><init>(Lcom/apkol/root/a/z;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 535
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 536
    return-void
.end method

.method private j()V
    .locals 7

    .prologue
    const v6, 0x7f0500ae

    const/16 v5, 0x5b

    const/4 v4, 0x4

    .line 540
    iget v0, p0, Lcom/apkol/root/a/z;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 541
    iget v0, p0, Lcom/apkol/root/a/z;->l:I

    if-ne v0, v6, :cond_2

    .line 542
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    invoke-interface {v0}, Lcom/apkol/root/a/x;->g()Ljava/lang/String;

    move-result-object v1

    .line 544
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    invoke-interface {v0}, Lcom/apkol/root/a/x;->c()V

    .line 545
    iget v0, p0, Lcom/apkol/root/a/z;->k:I

    iget-object v2, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 546
    iget-object v2, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    .line 547
    iget-object v0, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    iget v3, p0, Lcom/apkol/root/a/z;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    iget v0, v0, Lcom/apkol/root/a/z$a;->a:I

    .line 548
    iget-object v3, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    const-string v3, "exec comm"

    .line 546
    invoke-static {v2, v0, v4, v3, v1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    iget-object v2, v0, Lcom/apkol/root/AssistConst;->o:Ljava/util/Map;

    iget-object v0, p0, Lcom/apkol/root/a/z;->j:Ljava/util/List;

    .line 555
    iget v3, p0, Lcom/apkol/root/a/z;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    iget v0, v0, Lcom/apkol/root/a/z$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 554
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    invoke-static {v1, v5, v4, v0}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;)V

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/apkol/root/a/z;->l:I

    .line 558
    invoke-static {v0, v5, v4, v1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;III)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/apkol/root/a/x;
    .locals 4

    .prologue
    const v3, 0x7f0500ae

    .line 319
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x1000

    iput v1, v0, Lcom/apkol/root/RootActivity$a;->a:I

    .line 321
    .line 322
    iget-object v1, p0, Lcom/apkol/root/a/z;->b:Lcom/apkol/root/feature/e;

    invoke-interface {v1, v0}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    .line 324
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectRootAct type ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    .line 326
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x57

    if-ne p1, v0, :cond_1

    .line 327
    new-instance v0, Lcom/apkol/root/a/ae;

    iget-object v1, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/apkol/root/a/ae;-><init>(Landroid/content/Context;Lcom/apkol/root/a/ad;)V

    iput-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    .line 334
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    if-eqz v0, :cond_3

    .line 335
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "execute type ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "actionName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    invoke-interface {v2}, Lcom/apkol/root/a/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    .line 341
    const-string v2, ""

    .line 340
    invoke-static {v0, p1, v1, v2}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;)V

    .line 342
    iput v3, p0, Lcom/apkol/root/a/z;->l:I

    .line 343
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    invoke-interface {v0}, Lcom/apkol/root/a/x;->a()V

    .line 347
    :goto_1
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    return-object v0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x62

    if-ne p1, v0, :cond_2

    .line 329
    new-instance v0, Lcom/apkol/root/a/m;

    iget-object v1, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/apkol/root/a/m;-><init>(Landroid/content/Context;Lcom/apkol/root/a/ad;)V

    iput-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 331
    new-instance v0, Lcom/apkol/root/a/r;

    iget-object v1, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/apkol/root/a/r;-><init>(Landroid/content/Context;Lcom/apkol/root/a/ad;)V

    iput-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    goto :goto_0

    .line 345
    :cond_3
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail execute type ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/apkol/root/a/z;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x5b

    .line 105
    iget-object v2, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    const-string v3, ""

    .line 104
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;IILjava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/apkol/root/a/z;->d()V

    .line 107
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    invoke-interface {v0, p1, p2, p3}, Lcom/apkol/root/a/x;->a(IILandroid/content/Intent;)V

    .line 568
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 354
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runCheckResult ActinName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apkol/root/a/z;->e:Lcom/apkol/root/a/x;

    invoke-interface {v2}, Lcom/apkol/root/a/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ab:I

    if-ne p1, v0, :cond_1

    .line 357
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result=mAssistConst.CALL_BACK_SUC message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, p2}, Lcom/apkol/root/a/z;->c(Ljava/lang/String;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ac:I

    if-eq p1, v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ad:I

    if-ne p1, v0, :cond_3

    .line 362
    :cond_2
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleFailCallBack message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleFailCallBack result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, p2, p1}, Lcom/apkol/root/a/z;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->aa:I

    if-ne p1, v0, :cond_4

    .line 367
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result=mAssistConst.CALL_BACK_RUN message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x1000

    iput v1, v0, Lcom/apkol/root/RootActivity$a;->a:I

    .line 370
    .line 371
    iget-object v1, p0, Lcom/apkol/root/a/z;->b:Lcom/apkol/root/feature/e;

    invoke-interface {v1, v0}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    goto :goto_0

    .line 372
    :cond_4
    iget-object v0, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ae:I

    if-ne p1, v0, :cond_0

    .line 373
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result=mAssistConst.CALL_BACK_REBOOT message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0, p2}, Lcom/apkol/root/a/z;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/root/a/z$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .line 300
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    .line 310
    sget-object v0, Lcom/apkol/root/a/z;->a:Ljava/lang/String;

    const-string v1, "bubblesort"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void

    .line 301
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v2, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 300
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 302
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    iget v1, v0, Lcom/apkol/root/a/z$a;->b:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    iget v0, v0, Lcom/apkol/root/a/z$a;->b:I

    if-le v1, v0, :cond_2

    .line 303
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/apkol/root/a/z$a;

    .line 304
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/z$a;

    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/apkol/root/a/z;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/apkol/root/a/z;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/a/z;->i:Ljava/util/Timer;

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/apkol/root/a/z;->j()V

    .line 510
    :try_start_0
    invoke-direct {p0}, Lcom/apkol/root/a/z;->i()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 513
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const v2, 0x7f0500ac

    .line 110
    iput v2, p0, Lcom/apkol/root/a/z;->l:I

    .line 112
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/apkol/root/a/z;->q:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x1000

    iput v1, v0, Lcom/apkol/root/RootActivity$a;->a:I

    .line 114
    .line 115
    iget-object v1, p0, Lcom/apkol/root/a/z;->b:Lcom/apkol/root/feature/e;

    invoke-interface {v1, v0}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    .line 117
    invoke-direct {p0}, Lcom/apkol/root/a/z;->e()V

    .line 118
    return-void
.end method
