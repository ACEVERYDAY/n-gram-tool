.class public abstract Lcom/upay/billing/engine/CommonEngine;
.super Lcom/upay/billing/Engine;


# static fields
.field public static final UI_FINISH_ACTION:Ljava/lang/String; = "com.upay.billing.receiver.Ui_Finish_Action"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/upay/billing/Engine;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriceType()Lcom/upay/billing/bean/PriceType;
    .locals 1

    sget-object v0, Lcom/upay/billing/bean/PriceType;->FIXED:Lcom/upay/billing/bean/PriceType;

    return-object v0
.end method

.method public onMtAction(Lcom/upay/billing/MtContext;Lcom/upay/billing/utils/Json;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
