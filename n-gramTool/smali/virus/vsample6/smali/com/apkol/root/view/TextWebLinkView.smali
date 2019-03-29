.class public Lcom/apkol/root/view/TextWebLinkView;
.super Landroid/widget/TextView;
.source "TextWebLinkView.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcom/apkol/root/view/TextWebLinkView;->a:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/apkol/root/view/TextWebLinkView;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object p1, p0, Lcom/apkol/root/view/TextWebLinkView;->a:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 36
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 40
    :goto_0
    return v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    iget-object v0, p0, Lcom/apkol/root/view/TextWebLinkView;->a:Landroid/content/Context;

    const v1, 0x7f050100

    invoke-static {v0, v1}, Lcom/apkol/utils/v;->a(Landroid/content/Context;I)V

    .line 40
    const/4 v0, 0x0

    goto :goto_0
.end method
