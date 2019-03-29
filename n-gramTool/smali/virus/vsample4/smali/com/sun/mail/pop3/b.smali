.class public Lcom/sun/mail/pop3/b;
.super Ljavax/mail/Folder;
.source "Access to default session denied"


# instance fields
.field private doneUidl:Z

.field private exists:Z

.field private message_cache:Ljava/util/Vector;

.field private name:Ljava/lang/String;

.field private opened:Z

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private size:I

.field private total:I


# direct methods
.method constructor <init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    const-string v0, "INBOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .locals 2

    int-to-byte p13, p0

    shl-int/lit8 p167, p90, 0x5b

    #Field index out of bounds: 58353
    #iput-short p9, v1, field@58353
    nop

    #unknown opcode: 0x3e
    nop

    #Type index out of bounds: 30439
    #instance-of p10, p0, type@30439
    nop
.end method

