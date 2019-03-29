.class Lcom/apkol/root/b/m;
.super Ljava/lang/Object;
.source "UtilAss.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/apkol/root/a/ad;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/ad;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/b/m;->a:Lcom/apkol/root/a/ad;

    iput p2, p0, Lcom/apkol/root/b/m;->b:I

    iput-object p3, p0, Lcom/apkol/root/b/m;->c:Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/apkol/root/b/m;->a:Lcom/apkol/root/a/ad;

    iget v1, p0, Lcom/apkol/root/b/m;->b:I

    iget-object v2, p0, Lcom/apkol/root/b/m;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/apkol/root/a/ad;->a(ILjava/lang/String;)V

    .line 433
    return-void
.end method
