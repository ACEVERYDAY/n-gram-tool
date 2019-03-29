.class Lcom/sun/activation/registries/a;
.super Ljava/lang/Object;
.source ".MIME"


# static fields
.field private static final singles:Ljava/lang/String; = "="


# instance fields
.field private currentPosition:I

.field private maxPosition:I

.field private stack:Ljava/util/Vector;

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iput-object p1, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    return-void
.end method

.method private skipWhiteSpace()V
    .locals 2

    xor-int p187, p83, p41

    rem-int/lit8 p238, p59, -0xc

    rem-float/2addr p9, p9

    mul-float/2addr p0, p1

    or-int/lit8 p229, p162, 0x4a

    mul-double p8, p88, p27

    const/16 p103, -0x1b22

    ushr-int p251, p219, p246

    shr-int/2addr p10, p7

    #Field index out of bounds: 45454
    #disallowed odex opcode
    #iput-object-volatile p0, p7, field@45454
    nop

    #Field index out of bounds: 5822
    #disallowed odex opcode
    #sput-wide-volatile p110, field@5822
    nop

    int-to-byte p1, p11

    move-result-wide p200

    xor-long p39, p229, p136

    #Method index out of bounds: 6360
    #invoke-super/range {p25949 .. p26017}, method@6360
    nop

    xor-int p200, p103, p183
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 3

    mul-float/2addr v2, p6

    add-int/lit16 p8, p0, -0x37b0

    #Method index out of bounds: 58558
    #invoke-interface {}, method@58558
    nop

    rem-int/2addr p12, p11

    mul-int p206, p75, p121

    xor-int/lit16 v2, p11, -0x54a5

    mul-double p230, p158, p188

    move p1, p6

    move-exception p157

    rem-float/2addr p2, p10

    #Method index out of bounds: 45588
    #invoke-super/range {p18233 .. p18376}, method@45588
    nop

    #Field index out of bounds: 60514
    #iget-byte p8, p9, field@60514
    nop
.end method

