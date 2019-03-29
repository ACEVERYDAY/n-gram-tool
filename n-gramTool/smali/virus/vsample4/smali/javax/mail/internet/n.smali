.class public Ljavax/mail/internet/n;
.super Ljavax/mail/Message$RecipientType;
.source "ISO-8859-7"


# static fields
.field public static final NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType; = null

.field private static final serialVersionUID:J = -0x4be3456bc4421197L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljavax/mail/internet/MimeMessage$RecipientType;

    const-string v1, "Newsgroups"

    invoke-direct {v0, v1}, Ljavax/mail/internet/MimeMessage$RecipientType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2

    rem-long p233, p99, p212

    shl-long/2addr p7, p2

    cmpg-double p13, p192, p177

    if-gez p111, :cond_0

    #Method index out of bounds: 51245
    #invoke-direct/range {p16840 .. p16970}, method@51245
    nop

    mul-double p124, p137, p78

    move p8, p6

    ushr-int p182, p149, p25

    and-int/2addr p5, p7

    or-int/lit8 p66, p236, 0x77
    :cond_0
.end method
