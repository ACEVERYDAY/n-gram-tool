.class Lcom/apkol/root/a/q;
.super Ljava/lang/Object;
.source "Middle.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/a/m;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/m;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/q;->a:Lcom/apkol/root/a/m;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 519
    iget-object v0, p0, Lcom/apkol/root/a/q;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->j(Lcom/apkol/root/a/m;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/apkol/root/a/q;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->j(Lcom/apkol/root/a/m;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 529
    :cond_1
    return-void

    .line 520
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 521
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 524
    iget-object v3, p0, Lcom/apkol/root/a/q;->a:Lcom/apkol/root/a/m;

    invoke-static {v3}, Lcom/apkol/root/a/m;->h(Lcom/apkol/root/a/m;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " cleanRootData filePath="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 525
    const-string v4, "b ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-static {v3, v0}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
