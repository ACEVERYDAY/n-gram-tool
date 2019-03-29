.class Lcom/sun/mail/imap/l;
.super Ljava/lang/Object;
.source ";class="

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$14;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 1

    and-int/2addr p9, p3

    rem-double/2addr p0, p3

    long-to-float p3, p13

    #unknown opcode: 0xec
    nop

    move-result p62

    shl-int/2addr p3, p6

    rem-double/2addr p0, p13

    #disallowed odex opcode
    #iget-object-volatile p11, p5, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;
    nop
.end method
