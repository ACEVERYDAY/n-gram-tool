.class public Ljavax/mail/o;
.super Ljava/lang/Object;
.source "J"


# instance fields
.field protected name:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/Header;->name:Ljava/lang/String;

    iput-object p2, p0, Ljavax/mail/Header;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    :cond_0
    #unknown opcode: 0xec
    nop

    if-eq p3, p6, :cond_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #Method index out of bounds: 24245
    #invoke-static {}, method@24245
    nop
.end method
