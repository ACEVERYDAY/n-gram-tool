.class public Ljavax/mail/internet/o;
.super Ljavax/mail/Message;
.source "ISO-8859-8"

# interfaces
.implements Ljavax/mail/internet/MimePart;


# static fields
.field private static final answeredFlag:Ljavax/mail/Flags;

.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;


# instance fields
.field cachedContent:Ljava/lang/Object;

.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected flags:Ljavax/mail/Flags;

.field protected headers:Ljavax/mail/internet/InternetHeaders;

.field protected modified:Z

.field protected saved:Z

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    new-instance v0, Ljavax/mail/Flags;

    sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-direct {v0, v1}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    sput-object v0, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/mail/Message;-><init>(Ljavax/mail/Folder;I)V

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1, p3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljavax/mail/internet/InternetHeaders;[BI)V
    .locals 0

    invoke-direct {p0, p1, p4}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    iput-object p2, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    iput-object p3, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-direct {p0, v0}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    iput-boolean v2, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getSize()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_0
    :try_start_0
    iget-boolean v1, p1, Ljavax/mail/internet/MimeMessage;->strict:Z

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Ljavax/mail/util/SharedByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljavax/mail/util/SharedByteArrayInputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException while copying message"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

