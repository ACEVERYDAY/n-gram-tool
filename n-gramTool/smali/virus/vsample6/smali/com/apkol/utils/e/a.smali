.class public Lcom/apkol/utils/e/a;
.super Lcom/apkol/utils/f/c;
.source "HttpObservable.java"


# static fields
.field private static a:Lcom/apkol/utils/e/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/apkol/utils/f/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/apkol/utils/e/a;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/apkol/utils/e/a;->a:Lcom/apkol/utils/e/a;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/apkol/utils/e/a;

    invoke-direct {v0}, Lcom/apkol/utils/e/a;-><init>()V

    sput-object v0, Lcom/apkol/utils/e/a;->a:Lcom/apkol/utils/e/a;

    .line 21
    :cond_0
    sget-object v0, Lcom/apkol/utils/e/a;->a:Lcom/apkol/utils/e/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    invoke-super {p0}, Lcom/apkol/utils/f/c;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 31
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 29
    monitor-exit p0

    .line 35
    return-void

    .line 32
    :cond_0
    aget-object v0, v2, v1

    check-cast v0, Lcom/apkol/utils/f/a;

    invoke-interface {v0, p1}, Lcom/apkol/utils/f/a;->a(Ljava/lang/Object;)V

    .line 31
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
