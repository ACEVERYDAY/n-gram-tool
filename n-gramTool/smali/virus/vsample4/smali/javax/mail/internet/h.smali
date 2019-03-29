.class public final Ljavax/mail/internet/h;
.super Ljavax/mail/Header;
.source "ISO-8859-1"


# instance fields
.field line:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->name:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 3

    :cond_0
    :cond_1
    div-float p20, p151, p110

    double-to-long p10, p12

    cmpg-float p46, p168, p205

    mul-float p85, p14, p109

    or-int/lit8 p161, p195, -0x7f

    if-lt p7, p1, :cond_1

    rem-int/lit8 p158, p201, -0x6f

    move-exception p153

    rem-int/lit8 p146, p18, 0x2e

    add-int p156, p81, p158

    #Method index out of bounds: 56443
    #invoke-interface/range {p7683 .. p7841}, method@56443
    nop

    move/16 p43657, p30850

    #Field index out of bounds: 23480
    #disallowed odex opcode
    #iput-volatile p4, v0, field@23480
    nop

    #Type index out of bounds: 31643
    #filled-new-array/range {p44563 .. p44717}, type@31643
    nop

    #Field index out of bounds: 7033
    #sput-char p79, field@7033
    nop

    #Type index out of bounds: 13894
    #instance-of p6, p3, type@13894
    nop

    add-int/lit8 p250, p12, 0x21

    div-double p236, p138, p38

    aget p71, p106, p42

    monitor-enter p96

    #Field index out of bounds: 12046
    #iput-boolean p7, p3, field@12046
    nop

    #unknown opcode: 0x40
    nop

    xor-long p223, p209, p0

    #Field index out of bounds: 54939
    #iput-object v0, p10, field@54939
    nop

    if-gt p10, p1, :cond_0

    #Field index out of bounds: 35105
    #disallowed odex opcode
    #sput-wide-volatile p195, field@35105
    nop

    #Field index out of bounds: 18996
    #sput-wide p183, field@18996
    nop

    #Field index out of bounds: 37402
    #sget-boolean p174, field@37402
    nop
.end method
