.class public Lcom/sun/mail/smtp/c;
.super Ljavax/mail/MessagingException;
.source "BODYSTRUCTURE"


# static fields
.field private static final serialVersionUID:J = -0x1036c343a388c3adL


# instance fields
.field protected addr:Ljavax/mail/internet/InternetAddress;

.field protected cmd:Ljava/lang/String;

.field protected rc:I


# direct methods
.method public constructor <init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->addr:Ljavax/mail/internet/InternetAddress;

    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->cmd:Ljava/lang/String;

    iput p3, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->rc:I

    return-void
.end method


# virtual methods
