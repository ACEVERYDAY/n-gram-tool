.class Lcom/apkol/root/a/ak;
.super Ljava/lang/Object;
.source "RunRootShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/a/ae;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/ae;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/ak;->a:Lcom/apkol/root/a/ae;

    iput p2, p0, Lcom/apkol/root/a/ak;->b:I

    iput-object p3, p0, Lcom/apkol/root/a/ak;->c:Ljava/lang/String;

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 713
    iget-object v0, p0, Lcom/apkol/root/a/ak;->a:Lcom/apkol/root/a/ae;

    invoke-static {v0}, Lcom/apkol/root/a/ae;->m(Lcom/apkol/root/a/ae;)Lcom/apkol/root/a/ad;

    move-result-object v0

    iget v1, p0, Lcom/apkol/root/a/ak;->b:I

    iget-object v2, p0, Lcom/apkol/root/a/ak;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/apkol/root/a/ad;->a(ILjava/lang/String;)V

    .line 714
    return-void
.end method
