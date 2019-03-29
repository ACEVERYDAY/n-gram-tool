.class Leu/margaritasoft/firstdevelop/Grandman$1;
.super Ljava/lang/Object;
.source "Grandman.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/margaritasoft/firstdevelop/Grandman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/margaritasoft/firstdevelop/Grandman;


# direct methods
.method constructor <init>(Leu/margaritasoft/firstdevelop/Grandman;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 43
    iget-object v4, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-static {v4}, Leu/margaritasoft/firstdevelop/Grandman;->access$0(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/ProgressBar;

    move-result-object v4

    iget-object v5, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-static {v5}, Leu/margaritasoft/firstdevelop/Grandman;->access$0(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 44
    iget-object v4, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-static {v4}, Leu/margaritasoft/firstdevelop/Grandman;->access$0(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    const/16 v5, 0x63

    if-le v4, v5, :cond_2

    .line 45
    iget-object v4, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-static {v4}, Leu/margaritasoft/firstdevelop/Grandman;->access$1(Leu/margaritasoft/firstdevelop/Grandman;)Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    move-result-object v4

    invoke-virtual {v4}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->stop()V

    .line 46
    iget-object v4, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-static {v4}, Leu/margaritasoft/firstdevelop/Grandman;->access$2(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 47
    iget-object v4, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-static {v4}, Leu/margaritasoft/firstdevelop/Grandman;->access$0(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/ProgressBar;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 48
    iget-object v4, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Leu/margaritasoft/firstdevelop/Grandman;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 49
    .local v3, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "networkOperator":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 52
    const/4 v4, 0x3

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "250"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    iget-object v4, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-static {v4}, Leu/margaritasoft/firstdevelop/Grandman;->access$3(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v4, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-static {v4}, Leu/margaritasoft/firstdevelop/Grandman;->access$4(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    .line 57
    const-string v4, "25002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    iget-object v4, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-static {v4}, Leu/margaritasoft/firstdevelop/Grandman;->access$3(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v4, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-static {v4}, Leu/margaritasoft/firstdevelop/Grandman;->access$4(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :cond_1
    const-string v4, "25099"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "http://joinload.ru/enter.php?auto=1"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    .local v2, "shortcutIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v1, "putShortCutIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    const-string v4, "android.intent.extra.shortcut.NAME"

    const-string v5, "JoinLoad"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v4, "duplicate"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v5, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-virtual {v5}, Leu/margaritasoft/firstdevelop/Grandman;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f020004

    invoke-static {v5, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    const-string v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v4, p0, Leu/margaritasoft/firstdevelop/Grandman$1;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-virtual {v4, v1}, Leu/margaritasoft/firstdevelop/Grandman;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    .end local v0    # "networkOperator":Ljava/lang/String;
    .end local v1    # "putShortCutIntent":Landroid/content/Intent;
    .end local v2    # "shortcutIntent":Landroid/content/Intent;
    .end local v3    # "tel":Landroid/telephony/TelephonyManager;
    :cond_2
    return-void
.end method
