.class public Ljavax/mail/internet/f;
.super Ljava/lang/Object;
.source "IOException while sending message"


# static fields
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token; = null

.field public static final MIME:Ljava/lang/String; = "()<>@,;:\\\"\t []/?="

.field public static final RFC822:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"


# instance fields
.field private currentPos:I

.field private delimiters:Ljava/lang/String;

.field private maxPos:I

.field private nextPos:I

.field private peekPos:I

.field private skipComments:Z

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "()<>@,;:\\\"\t .[]"

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    return-void
.end method

.method private static filterToken(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    :goto_0
    :cond_0
    goto/32 :goto_0

    shr-long p117, p91, p103

    long-to-double p2, p1

    aput-wide v2, p187, p239

    #Field index out of bounds: 58939
    #sput-wide p215, field@58939
    nop

    if-ltz p130, :cond_0

    shr-int/2addr p3, v7

    #unknown opcode: 0xff
    nop

    #Type index out of bounds: 36715
    #check-cast p50, type@36715
    nop

    move-object/16 p46586, p45421

    aput-object p57, p9, p197

    #unknown opcode: 0x4c00
    nop

    div-long/2addr p1, v0

    #Field index out of bounds: 64768
    #disallowed odex opcode
    #sput-object-volatile p229, field@64768
    nop

    move-object p0, p1

    #Field index out of bounds: 7313
    #sget-byte p55, field@7313
    nop

    move-wide/from16 p83, p56028

    add-long/2addr v6, v0

    #unknown opcode: 0x73
    nop

    mul-int/lit8 p211, p12, -0x58

    #Field index out of bounds: 52593
    #sget-object v7, field@52593
    nop

    #Field index out of bounds: 52694
    #sget p8, field@52694
    nop

    div-int/lit8 p65, p1, -0x48

    xor-long/2addr v2, p0

    #disallowed odex opcode
    #iget-object-quick v0, v7, field@0x6d34
    nop

    #disallowed odex opcode
    #return-void-barrier
    nop

    shr-long p79, p34, p170

    aput-object p13, p74, p71

    const/high16 p198, 0x65290000    # 4.9879996E22f

    shr-long/2addr v0, v7

    div-double/2addr v0, v3

    sub-long p38, p192, p193

    #Field index out of bounds: 22983
    #sget-wide p93, field@22983
    nop

    add-int/lit8 p201, p126, -0x32

    shl-int/2addr v3, p1

    div-float/2addr p4, p5

    aput-short p146, v6, p7
.end method

