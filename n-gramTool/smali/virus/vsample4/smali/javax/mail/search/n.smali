.class public final Ljavax/mail/search/n;
.super Ljavax/mail/search/SearchTerm;
.source "LLIIL"


# static fields
.field private static final serialVersionUID:J = 0x63420cc8aadc1008L


# instance fields
.field protected term:Ljavax/mail/search/SearchTerm;


# direct methods
.method public constructor <init>(Ljavax/mail/search/SearchTerm;)V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    iput-object p1, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    #Type index out of bounds: 30640
    #filled-new-array/range {p44841 .. p45028}, type@30640
    nop

    goto :goto_0

    const/high16 p161, -0xe420000

    move-wide/from16 p85, p18489

    mul-int/2addr p13, p13

    move-result-object p104

    aput-byte p243, p94, p157

    #Method index out of bounds: 48735
    #invoke-super {}, method@48735
    nop

    #Field index out of bounds: 3842
    #iget-boolean p12, v1, field@3842
    nop
    :goto_0
.end method

