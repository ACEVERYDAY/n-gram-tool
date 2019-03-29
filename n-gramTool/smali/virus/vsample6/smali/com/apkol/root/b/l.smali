.class Lcom/apkol/root/b/l;
.super Ljava/lang/Object;
.source "UtilAss.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/b/l;->a:Landroid/view/View;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/apkol/root/b/l;->a:Landroid/view/View;

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 278
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 280
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 281
    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 282
    iget-object v1, p0, Lcom/apkol/root/b/l;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 283
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/apkol/root/b/l;->a:Landroid/view/View;

    .line 285
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 284
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 286
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 287
    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 288
    iget-object v1, p0, Lcom/apkol/root/b/l;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
