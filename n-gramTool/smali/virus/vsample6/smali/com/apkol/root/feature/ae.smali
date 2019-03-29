.class Lcom/apkol/root/feature/ae;
.super Ljava/lang/Object;
.source "UninsDataAss.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/x;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/x;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/ae;->a:Lcom/apkol/root/feature/x;

    iput-object p2, p0, Lcom/apkol/root/feature/ae;->b:Ljava/lang/String;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/apkol/root/feature/ae;->a:Lcom/apkol/root/feature/x;

    iget-object v1, p0, Lcom/apkol/root/feature/ae;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/feature/x;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :goto_0
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 655
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
