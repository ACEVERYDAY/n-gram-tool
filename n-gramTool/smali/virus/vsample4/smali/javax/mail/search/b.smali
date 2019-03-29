.class public abstract Ljavax/mail/search/b;
.super Ljavax/mail/search/SearchTerm;
.source "LIST"


# static fields
.field private static final serialVersionUID:J = 0x1bd4a1b9715ebffcL


# instance fields
.field protected address:Ljavax/mail/Address;


# direct methods
.method protected constructor <init>(Ljavax/mail/Address;)V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    iput-object p1, p0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    long-to-double p1, p10

    #Field index out of bounds: 26390
    #sget-wide p8, field@26390
    nop

    #Field index out of bounds: 49490
    #sput p246, field@49490
    nop

    int-to-float p7, p5

    #Field index out of bounds: 16635
    #disallowed odex opcode
    #sget-volatile p1, field@16635
    nop

    aget-wide p185, p146, p94

    #Field index out of bounds: 21848
    #iget-short p13, p4, field@21848
    nop

    shl-int p47, p67, p241

    or-long/2addr p2, v0

    move-object/from16 p222, p23677
.end method

