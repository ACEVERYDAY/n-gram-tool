.class Lcom/upay/billing/n;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic kD:Lcom/upay/billing/UpayActivity;


# direct methods
.method constructor <init>(Lcom/upay/billing/UpayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/n;->kD:Lcom/upay/billing/UpayActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/n;->kD:Lcom/upay/billing/UpayActivity;

    new-instance v1, Lcom/upay/billing/o;

    invoke-direct {v1, p0}, Lcom/upay/billing/o;-><init>(Lcom/upay/billing/n;)V

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
