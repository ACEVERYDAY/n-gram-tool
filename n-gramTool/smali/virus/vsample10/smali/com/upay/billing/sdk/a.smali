.class Lcom/upay/billing/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic kH:Lcom/upay/billing/sdk/Upay;


# direct methods
.method constructor <init>(Lcom/upay/billing/sdk/Upay;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/sdk/a;->kH:Lcom/upay/billing/sdk/Upay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget-object v0, p0, Lcom/upay/billing/sdk/a;->kH:Lcom/upay/billing/sdk/Upay;

    invoke-static {p2}, Lcom/upay/billing/b;->asInterface(Landroid/os/IBinder;)Lcom/upay/billing/IUpayService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/sdk/Upay;->access$002(Lcom/upay/billing/sdk/Upay;Lcom/upay/billing/IUpayService;)Lcom/upay/billing/IUpayService;

    :try_start_0
    iget-object v7, p0, Lcom/upay/billing/sdk/a;->kH:Lcom/upay/billing/sdk/Upay;

    iget-object v0, p0, Lcom/upay/billing/sdk/a;->kH:Lcom/upay/billing/sdk/Upay;

    invoke-static {v0}, Lcom/upay/billing/sdk/Upay;->access$000(Lcom/upay/billing/sdk/Upay;)Lcom/upay/billing/IUpayService;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/sdk/a;->kH:Lcom/upay/billing/sdk/Upay;

    iget-object v1, v1, Lcom/upay/billing/sdk/Upay;->appKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/upay/billing/sdk/a;->kH:Lcom/upay/billing/sdk/Upay;

    invoke-static {v2}, Lcom/upay/billing/sdk/Upay;->access$200(Lcom/upay/billing/sdk/Upay;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/upay/billing/sdk/a;->kH:Lcom/upay/billing/sdk/Upay;

    invoke-static {v3}, Lcom/upay/billing/sdk/Upay;->access$300(Lcom/upay/billing/sdk/Upay;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/upay/billing/sdk/a;->kH:Lcom/upay/billing/sdk/Upay;

    invoke-static {v4}, Lcom/upay/billing/sdk/Upay;->access$400(Lcom/upay/billing/sdk/Upay;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/upay/billing/sdk/a;->kH:Lcom/upay/billing/sdk/Upay;

    invoke-static {v5}, Lcom/upay/billing/sdk/Upay;->access$500(Lcom/upay/billing/sdk/Upay;)J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/upay/billing/IUpayService;->init(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;J)I

    move-result v0

    invoke-static {v7, v0}, Lcom/upay/billing/sdk/Upay;->access$102(Lcom/upay/billing/sdk/Upay;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/sdk/a;->kH:Lcom/upay/billing/sdk/Upay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/upay/billing/sdk/Upay;->access$002(Lcom/upay/billing/sdk/Upay;Lcom/upay/billing/IUpayService;)Lcom/upay/billing/IUpayService;

    return-void
.end method
