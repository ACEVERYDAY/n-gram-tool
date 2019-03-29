.class public final Ljavax/mail/search/i;
.super Ljavax/mail/search/AddressTerm;
.source "LLC"


# static fields
.field private static final serialVersionUID:J = 0x485e7192407c3469L


# direct methods
.method public constructor <init>(Ljavax/mail/Address;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/search/AddressTerm;-><init>(Ljavax/mail/Address;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    rem-int/2addr p5, p11

    double-to-long p1, p11

    and-long p196, p250, p22

    #Field index out of bounds: 16300
    #disallowed odex opcode
    #iget-object-volatile p2, p11, field@16300
    nop

    xor-int p56, p144, p82

    #Type index out of bounds: 25192
    #const-class p77, type@25192
    nop

    mul-long/2addr p7, p12
.end method

