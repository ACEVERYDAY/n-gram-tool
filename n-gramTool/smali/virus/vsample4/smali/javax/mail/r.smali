.class public abstract Ljavax/mail/r;
.super Ljava/lang/Object;
.source "JL"

# interfaces
.implements Ljavax/mail/Part;


# instance fields
.field protected expunged:Z

.field protected folder:Ljavax/mail/Folder;

.field protected msgnum:I

.field protected session:Ljavax/mail/Session;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljavax/mail/Message;->msgnum:I

    iput-boolean v0, p0, Ljavax/mail/Message;->expunged:Z

    iput-object v1, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    iput-object v1, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljavax/mail/Message;->msgnum:I

    iput-boolean v0, p0, Ljavax/mail/Message;->expunged:Z

    iput-object v1, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    iput-object v1, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    iput-object p1, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    iput p2, p0, Ljavax/mail/Message;->msgnum:I

    iget-object v0, p1, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    iget-object v0, v0, Ljavax/mail/Store;->session:Ljavax/mail/Session;

    iput-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljavax/mail/Message;->msgnum:I

    iput-boolean v0, p0, Ljavax/mail/Message;->expunged:Z

    iput-object v1, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    iput-object v1, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    iput-object p1, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    return-void
.end method


# virtual methods
.method public abstract addFrom([Ljavax/mail/Address;)V
.end method

.method public addRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V
    .locals 2

    #Method index out of bounds: 20652
    #invoke-direct/range {p37026 .. p37033}, method@20652
    nop

    #Field index out of bounds: 8962
    #sput-short p115, field@8962
    nop

    move-object p4, p6

    move-result-wide p76

    shr-long/2addr p6, p8

    or-int p156, p186, p126
.end method

.method public abstract addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
.end method

