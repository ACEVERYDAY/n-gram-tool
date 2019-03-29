.class Lru/atrant/shake2playnext/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/atrant/shake2playnext/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/atrant/shake2playnext/MainActivity;


# direct methods
.method constructor <init>(Lru/atrant/shake2playnext/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lru/atrant/shake2playnext/MainActivity$1;->this$0:Lru/atrant/shake2playnext/MainActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lru/atrant/shake2playnext/MainActivity$1;->this$0:Lru/atrant/shake2playnext/MainActivity;

    const-class v2, Lru/atrant/shake2playnext/Settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "i":Landroid/content/Intent;
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    iget-object v1, p0, Lru/atrant/shake2playnext/MainActivity$1;->this$0:Lru/atrant/shake2playnext/MainActivity;

    invoke-virtual {v1, v0}, Lru/atrant/shake2playnext/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void

    .line 132
    :catch_0
    move-exception v1

    goto :goto_0
.end method
