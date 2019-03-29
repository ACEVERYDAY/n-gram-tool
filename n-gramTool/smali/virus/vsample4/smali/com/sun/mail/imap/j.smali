.class Lcom/sun/mail/imap/j;
.super Ljava/lang/Object;
.source ";charset="

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$12;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 1

    add-long p128, p139, p16

    const-wide/high16 p219, 0x1bcd000000000000L    # 9.160317480204192E-175

    const-wide/16 p223, 0x76d0

    double-to-long p4, p3

    sub-int/2addr p14, v0

    double-to-float p6, p5
.end method
