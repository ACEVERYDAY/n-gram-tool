.class Lcom/apkol/root/a/d;
.super Ljava/lang/Object;
.source "DownLoadTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/a/a;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/a;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/d;->a:Lcom/apkol/root/a/a;

    iput p2, p0, Lcom/apkol/root/a/d;->b:I

    iput-object p3, p0, Lcom/apkol/root/a/d;->c:Ljava/lang/String;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/apkol/root/a/d;->a:Lcom/apkol/root/a/a;

    invoke-static {v0}, Lcom/apkol/root/a/a;->i(Lcom/apkol/root/a/a;)Lcom/apkol/root/a/e;

    move-result-object v0

    iget v1, p0, Lcom/apkol/root/a/d;->b:I

    iget-object v2, p0, Lcom/apkol/root/a/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/apkol/root/a/e;->a(ILjava/lang/String;)V

    .line 245
    return-void
.end method
