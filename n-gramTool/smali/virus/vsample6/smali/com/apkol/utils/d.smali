.class Lcom/apkol/utils/d;
.super Landroid/os/Handler;
.source "AsyncBmLoader.java"


# instance fields
.field final synthetic a:Lcom/apkol/utils/c;

.field private final synthetic b:Lcom/apkol/utils/c$b;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apkol/utils/c;Lcom/apkol/utils/c$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/utils/d;->a:Lcom/apkol/utils/c;

    iput-object p2, p0, Lcom/apkol/utils/d;->b:Lcom/apkol/utils/c$b;

    iput-object p3, p0, Lcom/apkol/utils/d;->c:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/apkol/utils/d;->b:Lcom/apkol/utils/c$b;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/apkol/utils/d;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/apkol/utils/c$b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/apkol/utils/d;->a:Lcom/apkol/utils/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apkol/utils/c;->a:Z

    .line 85
    return-void
.end method
