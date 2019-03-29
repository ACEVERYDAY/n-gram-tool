.class Lcom/qwapi/adclient/android/view/AdInterstitialView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qwapi/adclient/android/view/AdInterstitialView;->init(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;


# direct methods
.method constructor <init>(Lcom/qwapi/adclient/android/view/AdInterstitialView;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-static {v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->access$000(Lcom/qwapi/adclient/android/view/AdInterstitialView;)Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-static {v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->access$100(Lcom/qwapi/adclient/android/view/AdInterstitialView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-static {v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->access$200(Lcom/qwapi/adclient/android/view/AdInterstitialView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->invalidate()V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-virtual {v4}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-virtual {v5}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-virtual {v6}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v1, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->getSkipListener()Lcom/qwapi/adclient/android/view/SkipListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;->this$0:Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->getSkipListener()Lcom/qwapi/adclient/android/view/SkipListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qwapi/adclient/android/view/SkipListener;->onSkip()V

    :cond_0
    return-void
.end method
