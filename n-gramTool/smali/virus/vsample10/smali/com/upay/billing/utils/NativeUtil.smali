.class public Lcom/upay/billing/utils/NativeUtil;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ybzf"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native decrypt([B)[B
.end method

.method public static final native encrypt([B)[B
.end method

.method public static final native genHash(Ljava/util/HashMap;)Ljava/lang/String;
.end method

.method public static final native getExtPath()Ljava/lang/String;
.end method
