.class public final Ljavax/mail/search/g;
.super Ljavax/mail/search/SearchTerm;
.source "LJJ"


# static fields
.field private static final serialVersionUID:J = -0x1fc02030d671737L


# instance fields
.field protected flags:Ljavax/mail/Flags;

.field protected set:Z


# direct methods
.method public constructor <init>(Ljavax/mail/Flags;Z)V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    iput-object p1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    iput-boolean p2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/high16 p39, -0x26340000

    ushr-int p80, p57, p186

    mul-int/2addr v1, p9

    #Method index out of bounds: 41949
    #invoke-super {}, method@41949
    nop

    #unknown opcode: 0x42
    nop

    cmpg-float p38, p47, p152

    #Field index out of bounds: 40231
    #sget-short p228, field@40231
    nop

    cmpg-double p227, p152, p39

    mul-int p77, p60, p93

    mul-long/2addr v1, v2

    iget-wide p9, p7, Ljavax/activation/MailcapCommandMap;->PROG:I

    mul-long p116, p226, p152

    shr-int/2addr v0, p4

    int-to-char v0, v2

    #disallowed odex opcode
    #iget-quick p12, p2, field@0x3702
    nop
.end method

.method public getFlags()Ljavax/mail/Flags;
    .locals 1

    #Field index out of bounds: 51269
    #sget p18, field@51269
    nop

    #Field index out of bounds: 7093
    #iput-object p13, p10, field@7093
    nop

    if-ltz p121, :cond_0

    #Field index out of bounds: 13168
    #disallowed odex opcode
    #sget-volatile p152, field@13168
    nop

    int-to-long p9, p4
    :cond_0
.end method

