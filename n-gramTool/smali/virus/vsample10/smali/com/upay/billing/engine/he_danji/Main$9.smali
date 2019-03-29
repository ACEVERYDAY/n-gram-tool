.class synthetic Lcom/upay/billing/engine/he_danji/Main$9;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$com$upay$billing$engine$he_danji$Main$ExecType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/upay/billing/engine/he_danji/Main$ExecType;->values()[Lcom/upay/billing/engine/he_danji/Main$ExecType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/upay/billing/engine/he_danji/Main$9;->$SwitchMap$com$upay$billing$engine$he_danji$Main$ExecType:[I

    :try_start_0
    sget-object v0, Lcom/upay/billing/engine/he_danji/Main$9;->$SwitchMap$com$upay$billing$engine$he_danji$Main$ExecType:[I

    sget-object v1, Lcom/upay/billing/engine/he_danji/Main$ExecType;->DEL:Lcom/upay/billing/engine/he_danji/Main$ExecType;

    invoke-virtual {v1}, Lcom/upay/billing/engine/he_danji/Main$ExecType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/upay/billing/engine/he_danji/Main$9;->$SwitchMap$com$upay$billing$engine$he_danji$Main$ExecType:[I

    sget-object v1, Lcom/upay/billing/engine/he_danji/Main$ExecType;->SUCCESS:Lcom/upay/billing/engine/he_danji/Main$ExecType;

    invoke-virtual {v1}, Lcom/upay/billing/engine/he_danji/Main$ExecType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/upay/billing/engine/he_danji/Main$9;->$SwitchMap$com$upay$billing$engine$he_danji$Main$ExecType:[I

    sget-object v1, Lcom/upay/billing/engine/he_danji/Main$ExecType;->FAIL:Lcom/upay/billing/engine/he_danji/Main$ExecType;

    invoke-virtual {v1}, Lcom/upay/billing/engine/he_danji/Main$ExecType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
