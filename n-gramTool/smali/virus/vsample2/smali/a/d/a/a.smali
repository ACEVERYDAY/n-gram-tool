.class public La/d/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sget-object v1, La/b/a/a;->a:[B

    invoke-static {v0, v1}, La/a/b/a;->a([B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/d/a/a;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        -0x4ft
        0x36t
        -0x4ft
        -0x63t
        -0x72t
        -0x6ft
        -0x6et
        0x71t
        -0x5ft
        -0x12t
        -0x70t
        0x4ft
        -0x23t
        -0x46t
        0x1dt
        0x4bt
    .end array-data
.end method
