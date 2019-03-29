.class public Lcom/apkol/root/RootActivity;
.super Ljava/lang/Object;
.source "RootActivity.java"

# interfaces
.implements Lcom/apkol/root/feature/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/root/RootActivity$a;
    }
.end annotation


# static fields
.field public static b:Landroid/content/Context;


# instance fields
.field private final A:I

.field private final B:I

.field private C:I

.field private G:Landroid/app/Dialog;

.field private H:Lcom/apkol/root/AssistConst;

.field private I:Ljava/util/Timer;

.field private final a:Ljava/lang/String;

.field private c:Landroid/content/res/Resources;

.field private h:Landroid/widget/PopupWindow;

.field private i:Lcom/apkol/root/feature/aq;

.field private r:F

.field private s:F

.field private t:Lcom/apkol/root/a/z;

.field private u:Lcom/apkol/root/feature/a;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "f"

    iput-object v0, p0, Lcom/apkol/root/RootActivity;->a:Ljava/lang/String;

    .line 86
    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/apkol/root/RootActivity;->C:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/apkol/root/RootActivity;->A:I

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/apkol/root/RootActivity;->B:I

    .line 110
    iput-object v1, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    .line 112
    iput-object v1, p0, Lcom/apkol/root/RootActivity;->I:Ljava/util/Timer;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/RootActivity;)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/apkol/root/RootActivity;->o()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 139
    .line 140
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/apkol/root/RootActivity;->z:I

    .line 142
    sget-object v0, Lcom/apkol/root/RootActivity;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/RootActivity;->c:Landroid/content/res/Resources;

    .line 143
    new-instance v0, Lcom/apkol/root/feature/aq;

    sget-object v1, Lcom/apkol/root/RootActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/apkol/root/feature/aq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apkol/root/RootActivity;->i:Lcom/apkol/root/feature/aq;

    .line 148
    .line 151
    .line 156
    return-void
.end method

.method private b(ILjava/lang/String;)V
    .locals 2

    .prologue
    const v1, 0x7f050099

    .line 516
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 517
    .line 518
    .line 526
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x3000

    if-ne p1, v0, :cond_2

    .line 520
    .line 521
    goto :goto_0

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x4000

    if-ne p1, v0, :cond_0

    .line 523
    .line 524
    goto :goto_0
.end method

.method static synthetic c(Lcom/apkol/root/RootActivity;)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method private fail()V
    .locals 3

    .prologue
    .line 2404
    invoke-direct {p0}, Lcom/apkol/root/RootActivity;->jieshu()V

    return-void
.end method

.method private jieshu()V
    .locals 6

    .prologue
    .line 37
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lcom/apkol/root/RootActivity;->C:I

    iget-object v1, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    new-instance v0, Lcom/apkol/root/a/z;

    sget-object v1, Lcom/apkol/root/RootActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/apkol/root/a/z;-><init>(Landroid/content/Context;Lcom/apkol/root/feature/e;)V

    iput-object v0, p0, Lcom/apkol/root/RootActivity;->t:Lcom/apkol/root/a/z;

    .line 249
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->t:Lcom/apkol/root/a/z;

    invoke-virtual {v0}, Lcom/apkol/root/a/z;->d()V

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v0, Lcom/apkol/root/feature/a;

    sget-object v1, Lcom/apkol/root/RootActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/apkol/root/feature/a;-><init>(Landroid/content/Context;Lcom/apkol/root/feature/e;)V

    iput-object v0, p0, Lcom/apkol/root/RootActivity;->u:Lcom/apkol/root/feature/a;

    .line 252
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->u:Lcom/apkol/root/feature/a;

    invoke-virtual {v0}, Lcom/apkol/root/feature/a;->a()V

    goto :goto_0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 354
    .line 357
    .line 358
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->I:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->I:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/RootActivity;->I:Ljava/util/Timer;

    .line 470
    :cond_0
    return-void
.end method

.method private success()V
    .locals 3

    .prologue
    .line 2404
    invoke-direct {p0}, Lcom/apkol/root/RootActivity;->jieshu()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 473
    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 491
    const-string v1, "Type"

    const-string v2, "\u663e\u793a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v1, "sharecomment"

    .line 493
    sget-object v2, Lcom/apkol/root/RootActivity;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 494
    return-void
.end method

.method public a(Lcom/apkol/root/RootActivity$a;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v8, 0x3000

    const/16 v7, 0x2000

    const/16 v6, 0x8

    .line 391
    iget v0, p1, Lcom/apkol/root/RootActivity$a;->a:I

    .line 392
    .line 396
    iget-object v3, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x1000

    if-ne v0, v3, :cond_3

    .line 397
    iget-object v3, p0, Lcom/apkol/root/RootActivity;->a:Ljava/lang/String;

    const-string v4, "state = ROOT_GOING"

    invoke-static {v3, v4}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 405
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v7, :cond_1

    .line 406
    iget-object v1, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v8, :cond_1

    .line 407
    iget-object v1, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x5000

    if-eq v0, v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x6000

    if-ne v0, v1, :cond_2

    .line 411
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/apkol/root/RootActivity;->z:I

    .line 428
    .line 431
    :cond_2
    return-void

    .line 399
    :cond_3
    iget-object v3, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v0, v7, :cond_4

    .line 400
    invoke-direct {p0}, Lcom/apkol/root/RootActivity;->success()V

    goto :goto_0

    .line 401
    :cond_4
    iget-object v3, p0, Lcom/apkol/root/RootActivity;->H:Lcom/apkol/root/AssistConst;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v0, v8, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/apkol/root/RootActivity;->fail()V

    .line 403
    goto/16 :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sput-object p1, Lcom/apkol/root/RootActivity;->b:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/apkol/root/RootActivity;->b()V

    invoke-direct {p0}, Lcom/apkol/root/RootActivity;->k()V

    .line 27
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 751
    .line 752
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->a:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-direct {p0}, Lcom/apkol/root/RootActivity;->o()V

    .line 754
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->t:Lcom/apkol/root/a/z;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->t:Lcom/apkol/root/a/z;

    invoke-virtual {v0}, Lcom/apkol/root/a/z;->b()V

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->u:Lcom/apkol/root/feature/a;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/apkol/root/RootActivity;->u:Lcom/apkol/root/feature/a;

    invoke-virtual {v0}, Lcom/apkol/root/feature/a;->b()V

    .line 760
    :cond_1
    return-void
.end method
