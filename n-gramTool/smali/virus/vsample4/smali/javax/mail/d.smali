.class public abstract Ljavax/mail/d;
.super Ljava/lang/Object;
.source "Folder is not Readable"

# interfaces
.implements Ljavax/mail/Part;


# instance fields
.field protected parent:Ljavax/mail/Multipart;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParent()Ljavax/mail/Multipart;
    .locals 1

    #Field index out of bounds: 19606
    #sput-byte p237, field@19606
    nop

    mul-long/2addr p9, p2
.end method

.method setParent(Ljavax/mail/Multipart;)V
    .locals 0

    or-long/2addr p3, p8

    #Field index out of bounds: 17529
    #iget-object p14, p11, field@17529
    nop
.end method
