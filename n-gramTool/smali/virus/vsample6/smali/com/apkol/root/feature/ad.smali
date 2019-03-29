.class Lcom/apkol/root/feature/ad;
.super Ljava/lang/Object;
.source "UninsDataAss.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/ac;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/ac;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/ad;->a:Lcom/apkol/root/feature/ac;

    iput-object p2, p0, Lcom/apkol/root/feature/ad;->b:Ljava/util/ArrayList;

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/apkol/root/feature/ad;->a:Lcom/apkol/root/feature/ac;

    invoke-static {v0}, Lcom/apkol/root/feature/ac;->a(Lcom/apkol/root/feature/ac;)Lcom/apkol/root/feature/x;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/root/feature/ad;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/feature/x;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 584
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
