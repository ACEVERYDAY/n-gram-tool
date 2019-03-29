.class public Ljavax/mail/ad;
.super Ljava/lang/Object;
.source "Failed to fetch headers"


# instance fields
.field private className:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private type:Ljavax/mail/Provider$Type;

.field private vendor:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    iput-object p2, p0, Ljavax/mail/Provider;->protocol:Ljava/lang/String;

    iput-object p3, p0, Ljavax/mail/Provider;->className:Ljava/lang/String;

    iput-object p4, p0, Ljavax/mail/Provider;->vendor:Ljava/lang/String;

    iput-object p5, p0, Ljavax/mail/Provider;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    move-exception p182

    #disallowed odex opcode
    #sget-wide-volatile p7, Lcom/sun/mail/imap/protocol/d;->cParams:Ljavax/mail/internet/ParameterList;
    nop
.end method

