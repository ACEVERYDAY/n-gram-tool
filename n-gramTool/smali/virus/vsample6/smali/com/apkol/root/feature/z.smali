.class Lcom/apkol/root/feature/z;
.super Ljava/lang/Object;
.source "UninsDataAss.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/x;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/x;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/z;->a:Lcom/apkol/root/feature/x;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/apkol/root/feature/z;->a:Lcom/apkol/root/feature/x;

    invoke-static {v0}, Lcom/apkol/root/feature/x;->d(Lcom/apkol/root/feature/x;)Z

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/apkol/root/feature/z;->a:Lcom/apkol/root/feature/x;

    const/4 v2, 0x1

    const/16 v3, 0x1002

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/feature/x;IILjava/lang/Object;)V

    .line 147
    return-void
.end method
