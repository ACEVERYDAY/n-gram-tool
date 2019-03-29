.class public Lcom/sun/mail/imap/protocol/m;
.super Ljava/lang/Object;
.source "ATOM"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static df:Ljava/text/SimpleDateFormat;

.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;

.field static final name:[C


# instance fields
.field protected date:Ljava/util/Date;

.field public msgno:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;

    return-void

    :array_0
    .array-data 2
        0x49s
        0x4es
        0x54s
        0x45s
        0x52s
        0x4es
        0x41s
        0x4cs
        0x44s
        0x41s
        0x54s
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->msgno:I

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "INTERNALDATE is NIL"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/sun/mail/imap/protocol/INTERNALDATE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->date:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "INTERNALDATE parse error"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    :pswitch_data_0
    monitor-exit p2

    mul-double p106, p142, p46

    goto/16 :goto_0

    #Method index out of bounds: 38018
    #invoke-interface {p7, p9}, method@38018
    nop

    #Field index out of bounds: 62929
    #iput-short p4, p3, field@62929
    nop

    :try_start_0
    move-result-wide p13

    #unknown opcode: 0x7a
    nop

    #Method index out of bounds: 56560
    #invoke-super {}, method@56560
    nop

    #Type index out of bounds: 1141
    #check-cast p179, type@1141
    nop

    xor-int/2addr p6, v5

    const/16 p174, -0x1b81

    #Field index out of bounds: 26384
    #disallowed odex opcode
    #iget-object-volatile v1, p0, field@26384
    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    rem-int/lit16 p4, v4, -0x6781

    aput-short p34, p192, p101

    const-wide p99, -0x15639dfd8377f45aL    # -3.559533371661424E205

    int-to-short p9, p9

    const p50, -0x1e92e5a7

    #unknown opcode: 0x79
    nop

    div-int/2addr p9, v0

    #Field index out of bounds: 8421
    #iput-char v1, v4, field@8421
    nop

    #unknown opcode: 0x42
    nop

    #Field index out of bounds: 21514
    #iput-char v5, p5, field@21514
    nop

    div-float p77, p159, p51

    #unknown opcode: 0x7a
    nop

    monitor-enter p79

    #disallowed odex opcode
    #execute-inline/range {p53280 .. p53349}, inline@64415
    nop

    or-int p84, p210, p71

    #Field index out of bounds: 63103
    #disallowed odex opcode
    #sput-object-volatile p139, field@63103
    nop

    and-int p169, p37, p183

    neg-float p3, p6

    aput-boolean p234, p60, p37

    #Field index out of bounds: 64238
    #disallowed odex opcode
    #iput-object-volatile p8, v2, field@64238
    nop

    #invalid payload reference
    #packed-switch p135, :pswitch_data_0
    nop

