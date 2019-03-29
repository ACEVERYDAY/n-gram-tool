.class public abstract Lcom/upay/billing/UpayCore;
.super Lcom/upay/billing/b;


# static fields
.field public static instance:Lcom/upay/billing/UpayCore;


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/upay/billing/UpayCore;->instance:Lcom/upay/billing/UpayCore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/upay/billing/b;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/upay/billing/UpayCore;
    .locals 2

    sget-object v0, Lcom/upay/billing/UpayCore;->instance:Lcom/upay/billing/UpayCore;

    if-nez v0, :cond_0

    const-string v0, "com.upay.billing.engine.UpayCoreImpl"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/Util;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/UpayCore;

    sput-object v0, Lcom/upay/billing/UpayCore;->instance:Lcom/upay/billing/UpayCore;

    sget-object v0, Lcom/upay/billing/UpayCore;->instance:Lcom/upay/billing/UpayCore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->initCore(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/upay/billing/UpayCore;->instance:Lcom/upay/billing/UpayCore;

    return-object v0
.end method


# virtual methods
.method public abstract activateHandlers(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;)V
.end method

.method public abstract batchVerifySmsPay(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAction(Ljava/lang/String;)Lcom/upay/billing/bean/Action;
.end method

.method public abstract getAreaKey()Ljava/lang/String;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/UpayCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getCooldown(Ljava/lang/String;)Lcom/upay/billing/bean/Cooldown;
.end method

.method public abstract getCurrentTrade()Lcom/upay/billing/bean/Trade;
.end method

.method public abstract getGoods(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/bean/Goods;
.end method

.method public abstract getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;
.end method

.method public abstract getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTrade(ILjava/lang/String;)Lcom/upay/billing/bean/Trade;
.end method

.method public abstract getUpayContext()Lcom/upay/billing/UpayContext;
.end method

.method public abstract getUser()Lcom/upay/billing/utils/Json;
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;J)I
.end method

.method public initCore(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/UpayCore;->context:Landroid/content/Context;

    return-void
.end method

.method public abstract listTrades(ILjava/lang/String;)Ljava/util/List;
.end method

.method public abstract logEvent(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDestory()V
.end method

.method public abstract pay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract paymentCompleted(Lcom/upay/billing/bean/Trade;I)V
.end method

.method public abstract runOnMainThread(Ljava/lang/Runnable;)V
.end method

.method public abstract smsReceived(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract startPolling(Lcom/upay/billing/bean/Trade;)V
.end method

.method public abstract tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V
.end method

.method public abstract updateCooldown(Ljava/lang/String;I)V
.end method

.method public abstract verifySmsPay(Ljava/lang/String;)I
.end method
