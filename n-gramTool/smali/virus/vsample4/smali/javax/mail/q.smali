.class public Ljavax/mail/q;
.super Ljava/lang/Object;
.source "JJ"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BCC:Ljavax/mail/Message$RecipientType; = null

.field public static final CC:Ljavax/mail/Message$RecipientType; = null

.field public static final TO:Ljavax/mail/Message$RecipientType; = null

.field private static final serialVersionUID:J = -0x67cd8ef7b0c9bfa8L


# instance fields
.field protected type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljavax/mail/Message$RecipientType;

    const-string v1, "To"

    invoke-direct {v0, v1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    new-instance v0, Ljavax/mail/Message$RecipientType;

    const-string v1, "Cc"

    invoke-direct {v0, v1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    new-instance v0, Ljavax/mail/Message$RecipientType;

    const-string v1, "Bcc"

    invoke-direct {v0, v1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 3

    :array_0
    rsub-int p6, p3, 0x94e

    div-int/lit16 p1, p8, 0x4f7a

    xor-long/2addr p2, v1

    const-wide/32 p90, -0x350df9af

    #Field index out of bounds: 46678
    #sget-boolean p144, field@46678
    nop

    #Field index out of bounds: 55017
    #sput p25, field@55017
    nop

    #unknown opcode: 0x42
    nop

    sub-float p167, p100, p50

    add-int/lit16 p6, p6, -0x5a9e

    const/high16 p233, -0x23c90000

    mul-int p81, p104, p110

    #Field index out of bounds: 23251
    #iput-char p0, p8, field@23251
    nop

    and-int p115, p41, p251

    div-long/2addr p2, p0

    return-wide p122

    xor-long/2addr p7, p12

    div-double/2addr p8, p12

    #Field index out of bounds: 51534
    #disallowed odex opcode
    #sget-wide-volatile p67, field@51534
    nop

    long-to-double p6, v2

    #Type index out of bounds: 60295
    #instance-of p7, p10, type@60295
    nop

    div-long/2addr p12, p12

    #Type index out of bounds: 60368
    #check-cast p76, type@60368
    nop

    #unknown opcode: 0x7a
    nop

    shr-int/lit8 p105, p7, 0x4a

    add-double p13, p97, p21

    move-object/16 p57883, p3122

    sub-long p226, p216, p68

    shr-long p242, p34, p144

    add-int/lit16 p12, p6, -0x7e15

    xor-long/2addr v2, v1

    or-int/lit8 p130, p63, -0xf

    double-to-float p9, p5

    float-to-long p9, v2

    #invalid payload reference
    #fill-array-data p124, :array_0
    nop

    #disallowed odex opcode
    #execute-inline {}, inline@56361
    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #Method index out of bounds: 12278
    #invoke-super {}, method@12278
    nop
.end method
