.class Lcom/phone/stop/c/k;
.super Ljava/lang/Object;
.source "#"

# interfaces
.implements Ljavax/mail/event/TransportListener;


# instance fields
.field final synthetic a:Lcom/phone/stop/c/b;


# direct methods
.method constructor <init>(Lcom/phone/stop/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/phone/stop/c/c;->a:Lcom/phone/stop/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageDelivered(Ljavax/mail/event/TransportEvent;)V
    .locals 1

    #disallowed odex opcode
    #invoke-virtual-quick {p1, p9, p13, p4, p1}, vtable@7647
    nop

    #disallowed odex opcode
    #return-void-barrier
    nop

    rsub-int/lit8 p150, p35, -0x5a
.end method

.method public messageNotDelivered(Ljavax/mail/event/TransportEvent;)V
    .locals 1

    move-wide/from16 p175, p59335

    div-int p6, p107, p79

    and-int/lit8 p76, p231, 0x7e
.end method

