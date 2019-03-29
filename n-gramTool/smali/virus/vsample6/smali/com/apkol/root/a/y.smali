.class public Lcom/apkol/root/a/y;
.super Ljava/lang/Object;
.source "RootClassBase.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:I

.field private e:Landroid/content/Context;

.field private f:Lcom/apkol/root/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v1, p0, Lcom/apkol/root/a/y;->f:Lcom/apkol/root/a/a;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/a/y;->a:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/a/y;->b:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/apkol/root/a/y;->c:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/apkol/root/a/y;->e:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StackTraceElement;)V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/y;->c:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    iput v0, p0, Lcom/apkol/root/a/y;->d:I

    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apkol/root/a/e;)V
    .locals 6

    .prologue
    .line 26
    new-instance v0, Lcom/apkol/root/a/a;

    iget-object v1, p0, Lcom/apkol/root/a/y;->e:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/apkol/root/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apkol/root/a/e;)V

    iput-object v0, p0, Lcom/apkol/root/a/y;->f:Lcom/apkol/root/a/a;

    .line 27
    iget-object v0, p0, Lcom/apkol/root/a/y;->f:Lcom/apkol/root/a/a;

    invoke-virtual {v0}, Lcom/apkol/root/a/a;->a()V

    .line 28
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/apkol/root/a/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/apkol/root/a/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/apkol/root/a/y;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apkol/root/a/y;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": Line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apkol/root/a/y;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
