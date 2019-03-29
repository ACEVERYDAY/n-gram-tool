.class public Lcom/sun/mail/pop3/c;
.super Ljavax/mail/internet/MimeMessage;
.source "Added: "


# static fields
.field static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private folder:Lcom/sun/mail/pop3/POP3Folder;

.field private hdrSize:I

.field private msgSize:I

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    check-cast p1, Lcom/sun/mail/pop3/POP3Folder;

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    return-void
.end method

