.class public Lcom/sun/mail/imap/protocol/l;
.super Ljava/lang/Object;
.source "ARC_UNKNOWN"

# interfaces
.implements Lcom/sun/mail/imap/protocol/SaslAuthenticator;


# instance fields
.field private debug:Z

.field private host:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private out:Ljava/io/PrintStream;

.field private pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private props:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/util/Properties;ZLjava/io/PrintStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    iput-boolean p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    iput-object p5, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z
    .locals 1

    mul-double/2addr p4, p2

    mul-int p84, p162, p235
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;
    .locals 1

    #Method index out of bounds: 34910
    #invoke-direct/range {p24898 .. p24906}, method@34910
    nop
.end method


# virtual methods
.method public authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19

    :pswitch_data_0
    :pswitch_data_1
    :sswitch_data_0
    :cond_0
    :cond_1
    :cond_2
    :goto_0
    :cond_3
    :goto_1
    :cond_4
    :cond_5
    :cond_6
    #Method index out of bounds: 17459
    #invoke-interface/range {p12932 .. p13185}, method@17459
    nop

    not-int v5, v11

    cmpl-float p221, p39, p214

    :try_start_0
    float-to-long v4, v1

    mul-int/lit16 v13, v1, -0x27d9

    #unknown opcode: 0x7a
    nop

