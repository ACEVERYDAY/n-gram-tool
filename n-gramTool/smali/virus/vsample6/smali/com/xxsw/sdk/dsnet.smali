.class public Lcom/xxsw/sdk/dsnet;
.super Landroid/content/BroadcastReceiver;
.source "dsnet.java"


# static fields
.field public static final STATUS_ERROR:I = 0x0

.field public static final STATUS_GPRS:I = 0x1

.field public static final STATUS_WIFI:I = 0x2

.field private static mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x2

    sput v0, Lcom/xxsw/sdk/dsnet;->mStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-static {p1}, Lcom/xxsw/sdk/dswc;->start(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v4, -0x1

    .line 28
    .local v4, "tempStatus":I
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 29
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .line 30
    .local v3, "state_wifi":Landroid/net/NetworkInfo$State;
    const/4 v2, 0x0

    .line 35
    .local v2, "state_gprs":Landroid/net/NetworkInfo$State;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 40
    :goto_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 45
    :goto_2
    if-eqz v3, :cond_2

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v3, :cond_2

    .line 46
    const/4 v4, 0x2

    .line 55
    :goto_3
    sget v5, Lcom/xxsw/sdk/dsnet;->mStatus:I

    if-eq v5, v4, :cond_1

    .line 56
    if-eqz v4, :cond_1

    .line 62
    :try_start_2
    sget-object v5, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    if-eqz v5, :cond_1

    .line 63
    sget-object v5, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    const-string v6, "cnet"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64
    .local v1, "method":Ljava/lang/reflect/Method;
    sget-object v5, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_4
    sput v4, Lcom/xxsw/sdk/dsnet;->mStatus:I

    goto :goto_0

    .line 48
    :cond_2
    if-eqz v2, :cond_3

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v2, :cond_3

    .line 49
    const/4 v4, 0x1

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 67
    :catch_0
    move-exception v5

    goto :goto_4

    .line 41
    :catch_1
    move-exception v5

    goto :goto_2

    .line 36
    :catch_2
    move-exception v5

    goto :goto_1
.end method
