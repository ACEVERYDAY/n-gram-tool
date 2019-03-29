.class Ljavax/mail/k;
.super Ljavax/mail/event/MailEvent;
.source "Invalid Addresses"


# static fields
.field private static final serialVersionUID:J = 0x3442ac84f29e98b5L


# direct methods
.method constructor <init>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 1

    and-int/lit8 p204, p60, -0x11

    add-int p137, p226, p61

    mul-int/lit8 p207, p132, -0x7a

    #Field index out of bounds: 19773
    #sget-short p152, field@19773
    nop
.end method
