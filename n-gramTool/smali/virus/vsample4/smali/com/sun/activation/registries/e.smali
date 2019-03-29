.class public Lcom/sun/activation/registries/e;
.super Ljava/lang/Object;
.source ".appendbuffersize"


# static fields
.field public static final EOI_TOKEN:I = 0x5

.field public static final EQUALS_TOKEN:I = 0x3d

.field public static final SEMICOLON_TOKEN:I = 0x3b

.field public static final SLASH_TOKEN:I = 0x2f

.field public static final START_TOKEN:I = 0x1

.field public static final STRING_TOKEN:I = 0x2

.field public static final UNKNOWN_TOKEN:I


# instance fields
.field private autoquoteChar:C

.field private currentToken:I

.field private currentTokenValue:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private dataIndex:I

.field private dataLength:I

.field private isAutoquoting:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    const/16 v0, 0x3b

    iput-char v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->autoquoteChar:C

    return-void
.end method

.method private static fixEscapeSequences(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :goto_0
    :goto_1
    or-int p123, p232, p143

    move-object/from16 p156, p5512

    #Method index out of bounds: 25479
    #invoke-direct/range {p11620 .. p11653}, method@25479
    nop

    #Type index out of bounds: 16162
    #new-array p6, p5, type@16162
    nop

    #unknown opcode: 0xec
    nop

    #unknown opcode: 0xda00
    nop

    aget-short p159, p129, p184

    shr-int p193, p177, p0

    #Type index out of bounds: 3734
    #filled-new-array {p6}, type@3734
    nop

    array-length v4, v0

    goto :goto_1

    xor-long/2addr v1, p9

    or-int/2addr p2, v0

    #disallowed odex opcode
    #iget-quick p3, p1, field@0x8502
    nop

    add-long/2addr v2, p9

    #Field index out of bounds: 20002
    #iget-byte p10, p6, field@20002
    nop

    add-double p141, p100, p82

    #disallowed odex opcode
    #iput-quick v4, p8, field@0x7b2a
    nop

    long-to-double v3, p0

    rem-int/lit8 v3, p161, 0x2

    aget-byte p238, p59, p117

    or-long p218, p117, p231

    #Field index out of bounds: 38587
    #disallowed odex opcode
    #iput-object-volatile v1, v4, field@38587
    nop

    double-to-long v2, v1

    #Type index out of bounds: 59076
    #instance-of p1, p4, type@59076
    nop

    move-object/from16 p47, p21425

    mul-double p70, p3, p215

    #unknown opcode: 0x40
    nop

    shl-long p237, p161, p96

    goto/16 :goto_0

    or-int p241, p22, p73
.end method

