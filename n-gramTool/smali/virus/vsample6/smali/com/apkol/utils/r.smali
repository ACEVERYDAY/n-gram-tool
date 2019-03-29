.class public Lcom/apkol/utils/r;
.super Ljava/lang/Object;
.source "ShellUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/utils/r$a;,
        Lcom/apkol/utils/r$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/apkol/utils/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/utils/r;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/apkol/utils/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/apkol/utils/r$b;

    new-instance v1, Lcom/apkol/utils/s;

    invoke-direct {v1, p0}, Lcom/apkol/utils/s;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/apkol/utils/r$b;-><init>(Lcom/apkol/utils/r$a;)V

    .line 89
    invoke-virtual {v0}, Lcom/apkol/utils/r$b;->start()V

    .line 91
    int-to-long v1, p1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/apkol/utils/r$b;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    invoke-virtual {v0}, Lcom/apkol/utils/r$b;->a()I

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 92
    :catch_0
    move-exception v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/apkol/utils/r$b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/apkol/utils/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lcom/apkol/utils/r;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adbshellexecute cmd wrCmd ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/apkol/utils/r$b;

    new-instance v1, Lcom/apkol/utils/u;

    invoke-direct {v1, p0, p1}, Lcom/apkol/utils/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/apkol/utils/r$b;-><init>(Lcom/apkol/utils/r$a;)V

    .line 300
    invoke-virtual {v0}, Lcom/apkol/utils/r$b;->start()V

    .line 302
    int-to-long v1, p2

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/apkol/utils/r$b;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    invoke-virtual {v0}, Lcom/apkol/utils/r$b;->a()I

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 303
    :catch_0
    move-exception v1

    .line 305
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v0}, Lcom/apkol/utils/r$b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/apkol/utils/r;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/apkol/utils/r$b;

    new-instance v1, Lcom/apkol/utils/t;

    invoke-direct {v1, p2, p0, p1}, Lcom/apkol/utils/t;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/apkol/utils/r$b;-><init>(Lcom/apkol/utils/r$a;)V

    .line 200
    invoke-virtual {v0}, Lcom/apkol/utils/r$b;->start()V

    .line 202
    int-to-long v1, p3

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/apkol/utils/r$b;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    invoke-virtual {v0}, Lcom/apkol/utils/r$b;->a()I

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 203
    :catch_0
    move-exception v1

    .line 205
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v0}, Lcom/apkol/utils/r$b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
