.class final Lcom/qwapi/adclient/android/view/AdExpandableView$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qwapi/adclient/android/view/AdExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;


# direct methods
.method constructor <init>(Lcom/qwapi/adclient/android/view/AdExpandableView;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$MyWebChromeClient;->this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 v0, 0x1

    return v0
.end method
