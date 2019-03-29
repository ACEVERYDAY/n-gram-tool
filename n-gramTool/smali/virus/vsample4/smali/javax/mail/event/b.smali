.class public Ljavax/mail/event/b;
.super Ljavax/mail/event/MailEvent;
.source "HOLDS_FOLDERS"


# static fields
.field public static final CLOSED:I = 0x3

.field public static final DISCONNECTED:I = 0x2

.field public static final OPENED:I = 0x1

.field private static final serialVersionUID:J = -0x19bffd629136067dL


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 2

    add-float p247, p240, p227

    if-nez p116, :cond_0

    mul-int/lit16 p10, p4, 0x6bc3

    move-result p91

    add-double p38, p157, p168

    const/4 p1, 0x4

    neg-double p1, p3

    sub-double p234, p211, p122

    float-to-long p2, p7

    #unknown opcode: 0xec
    nop

    div-int/lit8 p30, p80, -0x36

    div-int/lit16 p13, p11, 0x50b8

    #unknown opcode: 0x3f
    nop

    sub-float p155, p166, p61

    cmp-long p48, p202, p104

    #String index out of bounds: 1027790722
    #const-string/jumbo p234, string@1027790722
    nop

    aput-char p192, p6, p0

    or-int/lit8 p3, p241, 0x38

    rem-long p168, p166, p10
    :cond_0
.end method

