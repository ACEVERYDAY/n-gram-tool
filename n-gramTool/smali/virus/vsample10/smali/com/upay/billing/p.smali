.class Lcom/upay/billing/p;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic kD:Lcom/upay/billing/UpayActivity;


# direct methods
.method constructor <init>(Lcom/upay/billing/UpayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/p;->kD:Lcom/upay/billing/UpayActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/upay/billing/p;->kD:Lcom/upay/billing/UpayActivity;

    invoke-static {v0}, Lcom/upay/billing/UpayActivity;->access$000(Lcom/upay/billing/UpayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/p;->kD:Lcom/upay/billing/UpayActivity;

    invoke-virtual {v0}, Lcom/upay/billing/UpayActivity;->myDestory()V

    iget-object v0, p0, Lcom/upay/billing/p;->kD:Lcom/upay/billing/UpayActivity;

    invoke-virtual {v0}, Lcom/upay/billing/UpayActivity;->finish()V

    :cond_0
    return-void
.end method
