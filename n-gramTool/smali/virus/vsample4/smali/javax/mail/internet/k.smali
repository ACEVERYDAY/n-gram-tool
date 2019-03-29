.class public Ljavax/mail/internet/k;
.super Ljava/text/SimpleDateFormat;
.source "ISO-8859-4"


# static fields
.field private static cal:Ljava/util/Calendar; = null

.field static debug:Z = false

.field private static final serialVersionUID:J = -0x711451d5f59c82abL

.field private static tz:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Ljavax/mail/internet/MailDateFormat;->debug:Z

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->tz:Ljava/util/TimeZone;

    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljavax/mail/internet/MailDateFormat;->tz:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EEE, d MMM yyyy HH:mm:ss \'XXXXX\' (z)"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method private static declared-synchronized ourUTC(IIIIIIIZ)Ljava/util/Date;
    .locals 4

    float-to-double p3, p8

    shr-long p185, p209, p94

    :try_start_0
    move-result-wide p20

    #unknown opcode: 0x79
    nop

    #Field index out of bounds: 29366
    #disallowed odex opcode
    #iget-object-volatile p1, p3, field@29366
    nop

    mul-int/lit16 p10, p6, 0x7488

    if-lt v3, p0, :cond_1

    #disallowed odex opcode
    #iput-quick p2, p10, field@0x46ca
    nop

    cmpg-double p178, p140, p129

    #Field index out of bounds: 38819
    #iput-byte p5, p6, field@38819
    nop

    #unknown opcode: 0x73
    nop

    #String index out of bounds: 2124700752
    #const-string/jumbo p139, string@2124700752
    nop

    shl-int/2addr p2, v0

    xor-int p111, p5, p37

    #disallowed odex opcode
    #invoke-virtual-quick {}, vtable@9749
    nop

    aput-wide p163, p72, p205

    rsub-int v2, p0, -0x1496

    #disallowed odex opcode
    #iput-wide-quick p3, p1, field@0x5fd7
    nop

    #unknown opcode: 0xec
    nop

    const-wide p130, -0x69295149a99b6e0aL

    add-int p196, p198, p109

    #Method index out of bounds: 59594
    #invoke-static {}, method@59594
    nop

    xor-int/2addr p10, p0

    shr-int p20, p177, p37

    if-nez p60, :cond_0

    aget p37, p57, p223

    #disallowed odex opcode
    #iput-wide-quick p7, p4, field@0xad08
    nop

    div-double/2addr v0, p2

    #Method index out of bounds: 34366
    #invoke-static {}, method@34366
    nop

    shr-int/2addr p0, v0

    aput-boolean p168, p221, p65
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide p122, 0x4e1513cbed5dada2L    # 1.4206092608512362E68
    :catchall_0
    :cond_0
    :cond_1
.end method

