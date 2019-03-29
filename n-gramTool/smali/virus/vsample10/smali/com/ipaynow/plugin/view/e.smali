.class final Lcom/ipaynow/plugin/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public bv:Landroid/view/MotionEvent;

.field final synthetic bw:Lcom/ipaynow/plugin/view/d;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/view/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/e;->bw:Lcom/ipaynow/plugin/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/view/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/view/e;-><init>(Lcom/ipaynow/plugin/view/d;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ipaynow/plugin/view/e;->bw:Lcom/ipaynow/plugin/view/d;

    invoke-static {v0}, Lcom/ipaynow/plugin/view/d;->a(Lcom/ipaynow/plugin/view/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/e;->bw:Lcom/ipaynow/plugin/view/d;

    invoke-static {v0}, Lcom/ipaynow/plugin/view/d;->a(Lcom/ipaynow/plugin/view/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/plugin/view/e;->bw:Lcom/ipaynow/plugin/view/d;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/e;->bw:Lcom/ipaynow/plugin/view/d;

    invoke-static {v0}, Lcom/ipaynow/plugin/view/d;->a(Lcom/ipaynow/plugin/view/d;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/view/e;->bv:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/ipaynow/plugin/view/e;->bv:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/ipaynow/plugin/view/d;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/e;->bw:Lcom/ipaynow/plugin/view/d;

    invoke-static {v0}, Lcom/ipaynow/plugin/view/d;->a(Lcom/ipaynow/plugin/view/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method
