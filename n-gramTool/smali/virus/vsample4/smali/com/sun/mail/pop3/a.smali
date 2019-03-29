.class public Lcom/sun/mail/pop3/a;
.super Ljavax/mail/Folder;
.source "AWT-DataTransferThread"


# direct methods
.method constructor <init>(Lcom/sun/mail/pop3/POP3Store;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    return-void
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .locals 2

    aput-short p37, p201, p13

    #Method index out of bounds: 37766
    #invoke-interface {p8, p6, p7, p4, p0}, method@37766
    nop

    sub-int/2addr p13, p0

    aput p98, p5, p11
.end method

.method public close(Z)V
    .locals 2

    sub-double p186, p205, p55

    rem-int p237, p10, p127

    shr-int p6, p92, p198

    aput p120, p13, p73
.end method

.method public create(I)Z
    .locals 1

    if-ne p14, p4, :cond_0
    :cond_0
.end method

