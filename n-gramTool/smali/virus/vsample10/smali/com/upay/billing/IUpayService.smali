.class public interface abstract Lcom/upay/billing/IUpayService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract batchVerifySmsPay(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTrade(ILjava/lang/String;)Lcom/upay/billing/bean/Trade;
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;J)I
.end method

.method public abstract listTrades(ILjava/lang/String;)Ljava/util/List;
.end method

.method public abstract logEvent(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract pay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract verifySmsPay(Ljava/lang/String;)I
.end method
