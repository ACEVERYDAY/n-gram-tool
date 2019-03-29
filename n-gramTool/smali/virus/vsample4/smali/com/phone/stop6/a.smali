.class public Lcom/phone/stop6/a;
.super Ljava/lang/Object;
.source "+OK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    rem-int p203, p21, p227

    or-int/2addr p10, p5
.end method

.method public b()I
    .locals 1

    .prologue
    .line 7
    if-nez p125, :cond_0

    move-result-wide p7
    :cond_0
.end method
