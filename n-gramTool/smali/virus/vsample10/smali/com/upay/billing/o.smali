.class Lcom/upay/billing/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic kE:Lcom/upay/billing/n;


# direct methods
.method constructor <init>(Lcom/upay/billing/n;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/o;->kE:Lcom/upay/billing/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/o;->kE:Lcom/upay/billing/n;

    iget-object v0, v0, Lcom/upay/billing/n;->kD:Lcom/upay/billing/UpayActivity;

    invoke-virtual {v0}, Lcom/upay/billing/UpayActivity;->myDestory()V

    iget-object v0, p0, Lcom/upay/billing/o;->kE:Lcom/upay/billing/n;

    iget-object v0, v0, Lcom/upay/billing/n;->kD:Lcom/upay/billing/UpayActivity;

    invoke-virtual {v0}, Lcom/upay/billing/UpayActivity;->finish()V

    return-void
.end method
