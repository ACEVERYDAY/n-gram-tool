.class public Leu/margaritasoft/firstdevelop/Grandman$UITimer;
.super Ljava/lang/Object;
.source "Grandman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/margaritasoft/firstdevelop/Grandman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UITimer"
.end annotation


# instance fields
.field private enabled:Z

.field private handler:Landroid/os/Handler;

.field private intervalMs:I

.field private oneTime:Z

.field private runMethod:Ljava/lang/Runnable;

.field final synthetic this$0:Leu/margaritasoft/firstdevelop/Grandman;

.field private timer_tick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Leu/margaritasoft/firstdevelop/Grandman;Landroid/os/Handler;Ljava/lang/Runnable;I)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "runMethod"    # Ljava/lang/Runnable;
    .param p4, "intervalMs"    # I

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object p1, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-boolean v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->enabled:Z

    .line 217
    iput-boolean v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->oneTime:Z

    .line 262
    new-instance v0, Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;

    invoke-direct {v0, p0}, Leu/margaritasoft/firstdevelop/Grandman$UITimer$1;-><init>(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)V

    iput-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->timer_tick:Ljava/lang/Runnable;

    .line 221
    iput-object p2, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->handler:Landroid/os/Handler;

    .line 222
    iput-object p3, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->runMethod:Ljava/lang/Runnable;

    .line 223
    iput p4, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->intervalMs:I

    .line 224
    return-void
.end method

.method public constructor <init>(Leu/margaritasoft/firstdevelop/Grandman;Landroid/os/Handler;Ljava/lang/Runnable;IZ)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "runMethod"    # Ljava/lang/Runnable;
    .param p4, "intervalMs"    # I
    .param p5, "oneTime"    # Z

    .prologue
    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;-><init>(Leu/margaritasoft/firstdevelop/Grandman;Landroid/os/Handler;Ljava/lang/Runnable;I)V

    .line 229
    iput-boolean p5, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->oneTime:Z

    .line 230
    return-void
.end method

.method static synthetic access$0(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->enabled:Z

    return v0
.end method

.method static synthetic access$1(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->runMethod:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->oneTime:Z

    return v0
.end method

.method static synthetic access$4(Leu/margaritasoft/firstdevelop/Grandman$UITimer;Z)V
    .locals 0

    .prologue
    .line 216
    iput-boolean p1, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->enabled:Z

    return-void
.end method

.method static synthetic access$5(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->timer_tick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Leu/margaritasoft/firstdevelop/Grandman$UITimer;)I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->intervalMs:I

    return v0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->enabled:Z

    return v0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 234
    iget-boolean v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->enabled:Z

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->intervalMs:I

    if-lt v0, v1, :cond_0

    .line 243
    iput-boolean v1, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->enabled:Z

    .line 244
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->timer_tick:Ljava/lang/Runnable;

    iget v2, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->intervalMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 249
    iget-boolean v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->enabled:Z

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->enabled:Z

    .line 253
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->runMethod:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->timer_tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
