.class Lcom/apkol/root/b/i;
.super Ljava/lang/Object;
.source "SysDirInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/b/h;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/apkol/root/b/h;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/b/i;->a:Lcom/apkol/root/b/h;

    iput-object p2, p0, Lcom/apkol/root/b/i;->b:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/apkol/root/b/i;->a:Lcom/apkol/root/b/h;

    iget-object v1, p0, Lcom/apkol/root/b/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/apkol/root/b/i;->a:Lcom/apkol/root/b/h;

    invoke-static {v2}, Lcom/apkol/root/b/h;->a(Lcom/apkol/root/b/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/apkol/root/b/h;->a(Lcom/apkol/root/b/h;Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/apkol/root/b/i;->a:Lcom/apkol/root/b/h;

    iget-object v1, p0, Lcom/apkol/root/b/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/apkol/root/b/i;->a:Lcom/apkol/root/b/h;

    invoke-static {v2}, Lcom/apkol/root/b/h;->b(Lcom/apkol/root/b/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/apkol/root/b/h;->a(Lcom/apkol/root/b/h;Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/apkol/root/b/i;->a:Lcom/apkol/root/b/h;

    iget-object v1, p0, Lcom/apkol/root/b/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/apkol/root/b/i;->a:Lcom/apkol/root/b/h;

    invoke-static {v2}, Lcom/apkol/root/b/h;->c(Lcom/apkol/root/b/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/apkol/root/b/h;->a(Lcom/apkol/root/b/h;Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method
