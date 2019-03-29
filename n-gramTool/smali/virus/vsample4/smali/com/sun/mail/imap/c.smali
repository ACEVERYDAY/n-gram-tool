.class Lcom/sun/mail/imap/c;
.super Ljava/lang/Object;
.source ";\n  nested exception is:\n\t"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/DefaultFolder;

.field private final synthetic val$pattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/imap/DefaultFolder$1;->this$0:Lcom/sun/mail/imap/DefaultFolder;

    iput-object p2, p0, Lcom/sun/mail/imap/DefaultFolder$1;->val$pattern:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 2

    #Type index out of bounds: 40924
    #filled-new-array {}, type@40924
    nop

    neg-long p2, p7

    float-to-int v0, p7

    double-to-long p10, p13

    #Method index out of bounds: 28847
    #invoke-virtual {}, method@28847
    nop
.end method
