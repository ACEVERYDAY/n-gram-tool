.class public Lcom/apkol/utils/r$b;
.super Ljava/lang/Thread;
.source "ShellUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/utils/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/apkol/utils/r$a;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/apkol/utils/r$a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 324
    iput-object v0, p0, Lcom/apkol/utils/r$b;->a:Ljava/lang/String;

    .line 325
    iput-object v0, p0, Lcom/apkol/utils/r$b;->b:Lcom/apkol/utils/r$a;

    .line 329
    iput-object p1, p0, Lcom/apkol/utils/r$b;->b:Lcom/apkol/utils/r$a;

    .line 330
    const/4 v0, -0x1

    iput v0, p0, Lcom/apkol/utils/r$b;->c:I

    .line 331
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/apkol/utils/r$b;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/apkol/utils/r$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/apkol/utils/r$b;->b:Lcom/apkol/utils/r$a;

    invoke-interface {v0}, Lcom/apkol/utils/r$a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/utils/r$b;->a:Ljava/lang/String;

    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lcom/apkol/utils/r$b;->c:I

    .line 346
    return-void
.end method
