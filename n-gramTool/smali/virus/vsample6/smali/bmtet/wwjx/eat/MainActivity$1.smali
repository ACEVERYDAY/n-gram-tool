.class Lbmtet/wwjx/eat/MainActivity$1;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmtet/wwjx/eat/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbmtet/wwjx/eat/MainActivity;


# direct methods
.method constructor <init>(Lbmtet/wwjx/eat/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbmtet/wwjx/eat/MainActivity$1;->this$0:Lbmtet/wwjx/eat/MainActivity;

    .line 73
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "paramAnonymousWebView"    # Landroid/webkit/WebView;
    .param p2, "paramAnonymousString"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity$1;->this$0:Lbmtet/wwjx/eat/MainActivity;

    invoke-static {v0}, Lbmtet/wwjx/eat/MainActivity;->access$0(Lbmtet/wwjx/eat/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity$1;->this$0:Lbmtet/wwjx/eat/MainActivity;

    invoke-static {v0}, Lbmtet/wwjx/eat/MainActivity;->access$1(Lbmtet/wwjx/eat/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "paramAnonymousWebView"    # Landroid/webkit/WebView;
    .param p2, "paramAnonymousString"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method
