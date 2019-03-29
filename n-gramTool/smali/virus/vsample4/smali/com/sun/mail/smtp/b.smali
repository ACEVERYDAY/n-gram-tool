.class public Lcom/sun/mail/smtp/b;
.super Ljavax/mail/SendFailedException;
.source "BODY.PEEK[HEADER]"


# static fields
.field private static final serialVersionUID:J = 0xb2b55b6465c5351L


# instance fields
.field protected addr:Ljavax/mail/internet/InternetAddress;

.field protected cmd:Ljava/lang/String;

.field protected rc:I


# direct methods
.method public constructor <init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->addr:Ljavax/mail/internet/InternetAddress;

    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->cmd:Ljava/lang/String;

    iput p3, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->rc:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljavax/mail/internet/InternetAddress;
    .locals 1

    throw p5

    #unknown opcode: 0x40
    nop

    move-result p60
.end method

