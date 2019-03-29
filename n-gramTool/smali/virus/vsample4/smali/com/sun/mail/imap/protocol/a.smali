.class public Lcom/sun/mail/imap/protocol/a;
.super Ljava/lang/Object;
.source "ADMINISTER"


# static fields
.field static final pem_array:[C

.field private static final pem_convert_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C

    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-lt v1, v2, :cond_0

    :goto_1
    sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    sget-object v2, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    sget-object v2, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static base64decode([CILjava/text/CharacterIterator;)I
    .locals 8

    :sswitch_data_0
    :goto_0
    move-wide p6, p7

    shl-long p23, p2, p61

    #invalid payload reference
    #sparse-switch p103, :sswitch_data_0
    nop

    #Method index out of bounds: 11607
    #invoke-super/range {p19354 .. p19457}, method@11607
    nop

    return-wide p182

    not-int p1, p0

    int-to-byte p2, v0

    #Field index out of bounds: 24282
    #disallowed odex opcode
    #sput-object-volatile p27, field@24282
    nop

    #unknown opcode: 0x73
    nop

    #Field index out of bounds: 49864
    #disallowed odex opcode
    #iput-volatile p4, v6, field@49864
    nop

    goto :goto_0

    double-to-float p1, v5

    float-to-int p1, v1

    #disallowed odex opcode
    #iget-object-quick v0, v4, field@0x5f63
    nop

    #Field index out of bounds: 62417
    #disallowed odex opcode
    #sget-volatile p142, field@62417
    nop

    cmp-long p188, p33, p50

    #Field index out of bounds: 49922
    #disallowed odex opcode
    #iget-object-volatile p2, v3, field@49922
    nop

