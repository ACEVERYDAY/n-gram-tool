.class public Lcom/apkol/utils/f/b;
.super Lcom/apkol/utils/f/c;
.source "ChangeObservable.java"


# static fields
.field private static a:Lcom/apkol/utils/f/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/apkol/utils/f/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/apkol/utils/f/b;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/apkol/utils/f/b;->a:Lcom/apkol/utils/f/b;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/apkol/utils/f/b;

    invoke-direct {v0}, Lcom/apkol/utils/f/b;-><init>()V

    sput-object v0, Lcom/apkol/utils/f/b;->a:Lcom/apkol/utils/f/b;

    .line 17
    :cond_0
    sget-object v0, Lcom/apkol/utils/f/b;->a:Lcom/apkol/utils/f/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    invoke-super {p0}, Lcom/apkol/utils/f/c;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 27
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 25
    monitor-exit p0

    .line 31
    return-void

    .line 28
    :cond_0
    aget-object v0, v2, v1

    check-cast v0, Lcom/apkol/utils/f/a;

    invoke-interface {v0, p1}, Lcom/apkol/utils/f/a;->a(Ljava/lang/Object;)V

    .line 27
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
