.class public abstract Ljavax/mail/search/a;
.super Ljavax/mail/search/StringTerm;
.source "LILZ"


# static fields
.field private static final serialVersionUID:J = 0x2ad6978ecdebb490L


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    #Type index out of bounds: 26018
    #filled-new-array/range {p11051 .. p11243}, type@26018
    nop

    #Field index out of bounds: 15280
    #iget-byte p1, p6, field@15280
    nop

    long-to-int v0, p8

    #disallowed odex opcode
    #invoke-super-quick/range {p51993 .. p52120}, vtable@44815
    nop

    or-int/lit16 p14, p8, 0x4cd4
.end method

.method protected match(Ljavax/mail/Address;)Z
    .locals 1

    #was invalid verification error type: 51
    #Proto index out of bounds: 8733
    #disallowed odex opcode
    #throw-verification-error generic-error, method_proto@8733
    nop

    aput-boolean p151, p113, p150

    #Field index out of bounds: 38742
    #sget-char p225, field@38742
    nop

    sub-int p96, p59, p40

    #Field index out of bounds: 42862
    #iget-object p8, p14, field@42862
    nop

    #Field index out of bounds: 60445
    #disallowed odex opcode
    #iput-wide-volatile p6, p6, field@60445
    nop

    cmpg-float p247, p122, p198

    add-int p22, p165, p62

    #Type index out of bounds: 6892
    #instance-of p6, p10, type@6892
    nop

    mul-float p111, p224, p156

    if-eqz p141, :cond_0

    const-wide/high16 p60, -0x146e000000000000L    # -1.47941322231048E210
    :cond_0
.end method
