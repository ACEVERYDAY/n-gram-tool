.class public Lcom/sun/mail/iap/e;
.super Ljava/lang/Object;
.source ".sasl.enable"


# instance fields
.field private bytes:[B

.field private count:I

.field private start:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B

    iput p2, p0, Lcom/sun/mail/iap/ByteArray;->start:I

    iput p3, p0, Lcom/sun/mail/iap/ByteArray;->count:I

    return-void
.end method


# virtual methods
