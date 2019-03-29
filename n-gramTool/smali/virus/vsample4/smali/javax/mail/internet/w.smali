.class Ljavax/mail/internet/w;
.super Ljava/lang/Object;
.source "Illegal character in local name"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/ParameterList$ParamEnum;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    div-float p187, p132, p2

    or-int/2addr p2, p1

    #Field index out of bounds: 55606
    #iput-object p3, p14, field@55606
    nop

    #Field index out of bounds: 60608
    #iget p12, p2, field@60608
    nop
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    add-int p126, p210, p24

    #Field index out of bounds: 59195
    #iget p14, p2, field@59195
    nop

    shl-long/2addr p5, v0

    #String index out of bounds: 61939
    #const-string p85, string@61939
    nop
.end method
