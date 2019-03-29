.class Lcom/phone/stop/c/c;
.super Ljava/lang/Object;

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

    const-string v0, "messageDelivered"

    invoke-static {v0}, Lcom/phone/stop/e/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public messageNotDelivered(Ljavax/mail/event/TransportEvent;)V
    .locals 1

    const-string v0, "messageNotDelivered"

    invoke-static {v0}, Lcom/phone/stop/e/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public messagePartiallyDelivered(Ljavax/mail/event/TransportEvent;)V
    .locals 1

    const-string v0, "messagePartiallyDelivered"

    invoke-static {v0}, Lcom/phone/stop/e/d;->a(Ljava/lang/String;)V

    return-void
.end method
