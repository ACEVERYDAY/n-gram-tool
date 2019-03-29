.class public Lc/aguoqkle/n/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lc/aguoqkle/n/CocoMi;


# direct methods
.method public constructor <init>(Lc/aguoqkle/n/CocoMi;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lc/aguoqkle/n/NetworkChangeReceiver;->a:Lc/aguoqkle/n/CocoMi;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    iget-object v0, p0, Lc/aguoqkle/n/NetworkChangeReceiver;->a:Lc/aguoqkle/n/CocoMi;

    invoke-virtual {v0}, Lc/aguoqkle/n/CocoMi;->a()V

    :cond_0
    return-void
.end method
