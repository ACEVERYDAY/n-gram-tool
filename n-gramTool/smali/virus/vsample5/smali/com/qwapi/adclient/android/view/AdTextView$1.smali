.class Lcom/qwapi/adclient/android/view/AdTextView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qwapi/adclient/android/view/AdTextView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qwapi/adclient/android/view/AdTextView;


# direct methods
.method constructor <init>(Lcom/qwapi/adclient/android/view/AdTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/AdTextView$1;->this$0:Lcom/qwapi/adclient/android/view/AdTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdTextView$1;->this$0:Lcom/qwapi/adclient/android/view/AdTextView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/AdTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->testParent()V

    const-string v0, "AdTextView"

    const-string v1, "I got a click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdTextView$1;->this$0:Lcom/qwapi/adclient/android/view/AdTextView;

    invoke-static {v0}, Lcom/qwapi/adclient/android/view/AdTextView;->access$000(Lcom/qwapi/adclient/android/view/AdTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qwapi/adclient/android/utils/Utils;->invokeLandingPage(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
