.class public Lcom/phone/stop/c/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Properties;

.field private b:Ljavax/mail/Session;

.field private c:Ljavax/mail/Message;

.field private d:Ljavax/mail/internet/MimeMultipart;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/phone/stop/c/b;->a:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/phone/stop/c/b;->a:Ljava/util/Properties;

    const-string v1, "mail.smtp.host"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/phone/stop/c/b;->a:Ljava/util/Properties;

    const-string v1, "mail.smtp.post"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/phone/stop/c/b;->a:Ljava/util/Properties;

    const-string v1, "mail.smtp.auth"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/phone/stop/c/b;->a:Ljava/util/Properties;

    invoke-static {v0}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;)Ljavax/mail/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/phone/stop/c/b;->b:Ljavax/mail/Session;

    new-instance v0, Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lcom/phone/stop/c/b;->b:Ljavax/mail/Session;

    invoke-direct {v0, v1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    iput-object v0, p0, Lcom/phone/stop/c/b;->c:Ljavax/mail/Message;

    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    const-string v1, "mixed"

    invoke-direct {v0, v1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phone/stop/c/b;->d:Ljavax/mail/internet/MimeMultipart;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/phone/stop/c/b;->c:Ljavax/mail/Message;

    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    iget-object v0, p0, Lcom/phone/stop/c/b;->c:Ljavax/mail/Message;

    invoke-virtual {v0, p2}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string v1, "text/html;charset=gbk"

    invoke-virtual {v0, p3, v1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/phone/stop/c/b;->d:Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Ljavax/mail/internet/InternetAddress;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/phone/stop/c/b;->c:Ljavax/mail/Message;

    sget-object v2, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v2, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    return-void

    :cond_0
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/phone/stop/c/b;->c:Ljavax/mail/Message;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/phone/stop/c/b;->c:Ljavax/mail/Message;

    iget-object v1, p0, Lcom/phone/stop/c/b;->d:Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v0, v1}, Ljavax/mail/Message;->setContent(Ljavax/mail/Multipart;)V

    iget-object v0, p0, Lcom/phone/stop/c/b;->c:Ljavax/mail/Message;

    invoke-virtual {v0}, Ljavax/mail/Message;->saveChanges()V

    iget-object v0, p0, Lcom/phone/stop/c/b;->b:Ljavax/mail/Session;

    const-string v1, "smtp"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/mail/Transport;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/phone/stop/c/b;->c:Ljavax/mail/Message;

    iget-object v2, p0, Lcom/phone/stop/c/b;->c:Ljavax/mail/Message;

    invoke-virtual {v2}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    new-instance v1, Lcom/phone/stop/c/c;

    invoke-direct {v1, p0}, Lcom/phone/stop/c/c;-><init>(Lcom/phone/stop/c/b;)V

    invoke-virtual {v0, v1}, Ljavax/mail/Transport;->addTransportListener(Ljavax/mail/event/TransportListener;)V

    invoke-virtual {v0}, Ljavax/mail/Transport;->close()V

    return-void
.end method
