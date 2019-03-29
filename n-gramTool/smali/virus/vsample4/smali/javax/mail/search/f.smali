.class public abstract Ljavax/mail/search/f;
.super Ljavax/mail/search/ComparisonTerm;
.source "LJ"


# static fields
.field private static final serialVersionUID:J = 0x42e013da6884266bL


# instance fields
.field protected date:Ljava/util/Date;


# direct methods
.method protected constructor <init>(ILjava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/search/ComparisonTerm;-><init>()V

    iput p1, p0, Ljavax/mail/search/DateTerm;->comparison:I

    iput-object p2, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    :pswitch_data_0
    :cond_0
    monitor-enter p21

    #was invalid verification error type: 48
    #Proto index out of bounds: 3862
    #disallowed odex opcode
    #throw-verification-error generic-error, method_proto@3862
    nop

    xor-long p61, p105, p251

    if-lt v2, p3, :cond_0

    #invalid payload reference
    #packed-switch p120, :pswitch_data_0
    nop

    #unknown opcode: 0xad00
    nop

    sub-double p52, p108, p178

    #disallowed odex opcode
    #invoke-virtual-quick {}, vtable@62234
    nop

    cmpl-float p0, p182, p126

    ushr-int/lit8 p16, p82, -0x51

    if-lt v2, p9, :cond_1

    const-wide/16 p164, 0x3f0e

    div-float/2addr v2, v1

    #Field index out of bounds: 30983
    #iput-boolean p12, p0, field@30983
    nop

    mul-int/lit8 p245, p77, 0x25

    div-double/2addr v2, p2
    :cond_1
.end method

.method public getComparison()I
    .locals 1

    #Field index out of bounds: 64639
    #disallowed odex opcode
    #iget-volatile p5, p7, field@64639
    nop

    mul-long/2addr p11, p0
.end method

