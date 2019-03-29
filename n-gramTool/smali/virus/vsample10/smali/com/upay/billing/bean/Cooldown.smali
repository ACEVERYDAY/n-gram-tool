.class public Lcom/upay/billing/bean/Cooldown;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public interval:I

.field public key:Ljava/lang/String;

.field public startTime:J

.field public stopped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/upay/billing/bean/Cooldown;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/upay/billing/bean/Cooldown;->reset()V

    return-void
.end method


# virtual methods
.method public cooling()Z
    .locals 4

    iget-wide v0, p0, Lcom/upay/billing/bean/Cooldown;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/upay/billing/bean/Cooldown;->startTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upay/billing/bean/Cooldown;->stopped:Z

    return-void
.end method

.method public start()V
    .locals 4

    iget-wide v0, p0, Lcom/upay/billing/bean/Cooldown;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cooling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upay/billing/bean/Cooldown;->startTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upay/billing/bean/Cooldown;->stopped:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upay/billing/bean/Cooldown;->stopped:Z

    return-void
.end method

.method public update(I)V
    .locals 0

    iput p1, p0, Lcom/upay/billing/bean/Cooldown;->interval:I

    return-void
.end method
