.class Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;
.super Ljava/lang/Object;
.source "Grandman.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/margaritasoft/firstdevelop/Grandman$UITimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Leu/margaritasoft/firstdevelop/Grandman$UITimer;


# direct methods
.method constructor <init>(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;->this$1:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;->this$1:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    invoke-static {v0}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->access$0(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;->this$1:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    invoke-static {v0}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->access$1(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;->this$1:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    invoke-static {v1}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->access$2(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;->this$1:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    invoke-static {v0}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->access$3(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;->this$1:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->access$4(Leu/margaritasoft/firstdevelop/Grandman$UITimer;Z)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;->this$1:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    invoke-static {v0}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->access$1(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;->this$1:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    invoke-static {v1}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->access$5(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;->this$1:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    invoke-static {v2}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->access$6(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
