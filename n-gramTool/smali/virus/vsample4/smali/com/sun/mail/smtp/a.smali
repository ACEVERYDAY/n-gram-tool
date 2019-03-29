.class public Lcom/sun/mail/smtp/a;
.super Ljava/lang/Object;
.source "BODY.PEEK[HEADER.FIELDS ("


# static fields
.field private static digits:[C


# instance fields
.field private clientResponse:Ljava/lang/String;

.field private debugout:Ljava/io/PrintStream;

.field private md5:Ljava/security/MessageDigest;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/smtp/DigestMD5;->digits:[C

    return-void

    :array_0
    .array-data 2
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string v0, "DEBUG DIGEST-MD5: Loaded"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 7

    :cond_0
    int-to-double p6, p5

    #Field index out of bounds: 32315
    #disallowed odex opcode
    #sget-volatile p191, field@32315
    nop

    #Field index out of bounds: 27705
    #sget-object p104, field@27705
    nop

    #Field index out of bounds: 7460
    #disallowed odex opcode
    #sput-object-volatile p63, field@7460
    nop

    #disallowed odex opcode
    #return-void-barrier
    nop

    #disallowed odex opcode
    #invoke-super-quick/range {p23303 .. p23534}, vtable@5126
    nop

    and-long/2addr p7, p2

    #Field index out of bounds: 2426
    #sget-byte p170, field@2426
    nop

    or-int/2addr p3, p3

    or-int/lit8 p212, p160, 0x1f

    return-void

    #unknown opcode: 0x3e
    nop

    #was invalid verification error type: 49
    #Method index out of bounds: 27272
    #disallowed odex opcode
    #throw-verification-error generic-error, method@27272
    nop

    #Field index out of bounds: 11106
    #disallowed odex opcode
    #iput-volatile v1, v1, field@11106
    nop

    mul-int p108, p150, p186

    aget-char p11, p146, p27

    #Field index out of bounds: 24546
    #iput-short p6, v2, field@24546
    nop

    xor-int/lit16 p8, v4, -0x106c

    #Field index out of bounds: 56101
    #disallowed odex opcode
    #iput-object-volatile p3, p4, field@56101
    nop

    if-gez p210, :cond_0

    #invalid payload reference
    #packed-switch p248, :pswitch_data_0
    nop

    shr-long p101, p150, p18

    long-to-float v6, p4

    #Field index out of bounds: 36765
    #iput-boolean v0, p1, field@36765
    nop
    :pswitch_data_0
.end method

