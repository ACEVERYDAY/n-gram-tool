.class Lcom/sun/mail/imap/m;
.super Ljava/lang/Object;
.source ";class=\""

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$15;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPFolder$15;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 2

    monitor-exit p136

    const-wide/16 p4, -0xaba

    #Field index out of bounds: 30683
    #iput-char p12, p11, field@30683
    nop

    int-to-short p3, p1

    aput p41, p246, p117

    #Field index out of bounds: 37040
    #sput-short p119, field@37040
    nop

    float-to-int p3, p9
.end method
