.class final Lcom/upay/billing/utils/k;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic lb:Landroid/os/Handler;

.field final synthetic lc:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/utils/k;->lb:Landroid/os/Handler;

    iput p2, p0, Lcom/upay/billing/utils/k;->lc:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/utils/k;->lb:Landroid/os/Handler;

    iget v1, p0, Lcom/upay/billing/utils/k;->lc:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
