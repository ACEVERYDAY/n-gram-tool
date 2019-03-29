.class Lcom/apkol/root/feature/ao;
.super Ljava/lang/Object;
.source "UninstallFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/ag;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/ag;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/ao;->a:Lcom/apkol/root/feature/ag;

    iput-object p2, p0, Lcom/apkol/root/feature/ao;->b:Ljava/lang/String;

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/apkol/root/feature/ao;->a:Lcom/apkol/root/feature/ag;

    iget-object v1, p0, Lcom/apkol/root/feature/ao;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apkol/root/feature/ag;->a(Lcom/apkol/root/feature/ag;Ljava/lang/String;)V

    .line 697
    return-void
.end method
