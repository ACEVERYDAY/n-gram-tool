.class public Lcom/sun/mail/imap/a;
.super Ljava/lang/Object;
.source ": "

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private name:Ljava/lang/String;

.field private rights:Lcom/sun/mail/imap/Rights;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/ACL;->name:Ljava/lang/String;

    new-instance v0, Lcom/sun/mail/imap/Rights;

    invoke-direct {v0}, Lcom/sun/mail/imap/Rights;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/imap/Rights;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/ACL;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    return-void
.end method


# virtual methods
