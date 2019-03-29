.class Lcom/sun/mail/imap/h;
.super Ljava/lang/Object;
.source "; charset="

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic val$dd:Ljava/util/Date;

.field private final synthetic val$f:Ljavax/mail/Flags;

.field private final synthetic val$mos:Lcom/sun/mail/imap/MessageLiteral;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$10;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPFolder$10;->val$f:Ljavax/mail/Flags;

    iput-object p3, p0, Lcom/sun/mail/imap/IMAPFolder$10;->val$dd:Ljava/util/Date;

    iput-object p4, p0, Lcom/sun/mail/imap/IMAPFolder$10;->val$mos:Lcom/sun/mail/imap/MessageLiteral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
