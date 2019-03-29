.class public Lcom/apkol/utils/d/a;
.super Ljava/lang/Object;
.source "GestureDetectorListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final a:I = 0x28


# instance fields
.field private b:Lcom/apkol/utils/d/b;


# direct methods
.method public constructor <init>(Lcom/apkol/utils/d/b;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/apkol/utils/d/a;->b:Lcom/apkol/utils/d/b;

    .line 16
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x42200000    # 40.0f

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 27
    iget-object v2, p0, Lcom/apkol/utils/d/a;->b:Lcom/apkol/utils/d/b;

    invoke-interface {v2, v1}, Lcom/apkol/utils/d/b;->a(I)V

    .line 34
    :goto_0
    return v0

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 31
    iget-object v1, p0, Lcom/apkol/utils/d/a;->b:Lcom/apkol/utils/d/b;

    invoke-interface {v1, v0}, Lcom/apkol/utils/d/b;->a(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 34
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
