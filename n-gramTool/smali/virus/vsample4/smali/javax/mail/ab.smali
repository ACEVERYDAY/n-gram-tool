.class public final Ljavax/mail/ab;
.super Ljava/lang/Object;
.source "FROM"


# instance fields
.field private password:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/PasswordAuthentication;->userName:Ljava/lang/String;

    iput-object p2, p0, Ljavax/mail/PasswordAuthentication;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    :cond_0
    if-eq p0, p4, :cond_0

    neg-float p6, p3
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    #Field index out of bounds: 34014
    #sput p112, field@34014
    nop

    return-wide p253
.end method
