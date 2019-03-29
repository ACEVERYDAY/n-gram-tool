.class Lbmtet/wwjx/eat/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lbmtet/wwjx/eat/MainActivity$2;->this$0:Lbmtet/wwjx/eat/MainActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "paramAnonymousView"    # Landroid/view/View;
    .param p2, "paramAnonymousInt"    # I
    .param p3, "paramAnonymousKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 93
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity$2;->this$0:Lbmtet/wwjx/eat/MainActivity;

    invoke-static {v0}, Lbmtet/wwjx/eat/MainActivity;->access$2(Lbmtet/wwjx/eat/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity$2;->this$0:Lbmtet/wwjx/eat/MainActivity;

    invoke-static {v0}, Lbmtet/wwjx/eat/MainActivity;->access$2(Lbmtet/wwjx/eat/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
