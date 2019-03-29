.class Ljavax/activation/t;
.super Ljava/lang/Object;
.source "ENVELOPE"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    #Type index out of bounds: 59567
    #check-cast p31, type@59567
    nop

    :try_start_0
    move/from16 p177, p50222

    #Field index out of bounds: 16329
    #disallowed odex opcode
    #sput-object-volatile p93, field@16329
    nop

    div-int v1, p92, p88
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p34, p31, -0x6c

    :catch_0
    div-long/2addr v0, p1

    int-to-long p1, p6
.end method
