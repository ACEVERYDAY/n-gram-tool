.class public Ljavax/mail/internet/u;
.super Ljavax/mail/Address;
.source "Illegal address"


# static fields
.field private static final serialVersionUID:J = -0x3a56e35f1bcbec6fL


# instance fields
.field protected host:Ljava/lang/String;

.field protected newsgroup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/NewsAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    iput-object p2, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/NewsAddress;
    .locals 4

    #Field index out of bounds: 29380
    #disallowed odex opcode
    #iput-object-volatile v1, p3, field@29380
    nop

    return-void

    aget-object p106, p111, p17

    #Field index out of bounds: 62212
    #iget-boolean v0, v2, field@62212
    nop

    shr-long/2addr v1, p1

    shl-int p142, p212, p65

    #Field index out of bounds: 49001
    #disallowed odex opcode
    #sget-wide-volatile v2, field@49001
    nop

    #Field index out of bounds: 47738
    #iput-byte v1, p7, field@47738
    nop

    goto/16 :goto_0

    #Field index out of bounds: 61427
    #iput-wide p5, p8, field@61427
    nop

    and-long/2addr p7, v0

    or-int p57, p156, p129

    add-float p86, p54, p88

    #Field index out of bounds: 3015
    #iget-boolean p3, p10, field@3015
    nop

    aget-short p14, p83, p55

