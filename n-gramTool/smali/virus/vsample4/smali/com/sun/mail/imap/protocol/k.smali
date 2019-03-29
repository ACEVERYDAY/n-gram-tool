.class Lcom/sun/mail/imap/protocol/k;
.super Ljava/lang/Object;
.source "ARC_IA64"

# interfaces
.implements Ljavax/security/auth/callback/CallbackHandler;


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

.field private final synthetic val$p0:Ljava/lang/String;

.field private final synthetic val$r0:Ljava/lang/String;

.field private final synthetic val$u0:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$u0:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$p0:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle([Ljavax/security/auth/callback/Callback;)V
    .locals 7

    :sswitch_data_0
    :cond_0
    :cond_1
    :goto_0
    not-int p7, p5

    int-to-byte v2, p1

    #invalid payload reference
    #sparse-switch p181, :sswitch_data_0
    nop

    #disallowed odex opcode
    #execute-inline {p1, v2, p1}, inline@57857
    nop

    cmpl-double p10, p244, p39

    const/high16 p50, 0x788c0000

    rem-int/2addr p1, p5

    #Field index out of bounds: 54700
    #iget-byte v2, p1, field@54700
    nop

    #unknown opcode: 0xec
    nop

    aput-char p50, p170, p140

    shr-long/2addr v4, p8

    #disallowed odex opcode
    #iput-quick v4, p3, field@0xf940
    nop

    if-ge p1, p4, :cond_1

    long-to-float v3, p8

    ushr-int v2, p139, p41

    goto/32 :goto_2

    #Field index out of bounds: 35070
    #sput p60, field@35070
    nop

    #Field index out of bounds: 53493
    #sput-wide v6, field@53493
    nop

    return-object p194

    #Field index out of bounds: 39046
    #iput-boolean p3, p1, field@39046
    nop

    sub-float/2addr v0, v3

    or-int/lit16 p0, p8, 0x392a

    #was invalid verification error type: 12
    #Type index out of bounds: 30693
    #disallowed odex opcode
    #throw-verification-error generic-error, type@30693
    nop

    move-exception p183

    #Field index out of bounds: 31667
    #sput p85, field@31667
    nop

    xor-int/lit8 p159, p200, -0x9

    int-to-long v3, v5

    shl-long p10, p117, p231

    #disallowed odex opcode
    #return-void-barrier
    nop

    div-long/2addr v2, v0

    long-to-float p2, p2

    shl-int p110, p89, p1

    #Type index out of bounds: 38242
    #check-cast p236, type@38242
    nop

    rem-int/lit16 v3, v5, 0x1bfd

    rem-long p236, p215, p33

    #Field index out of bounds: 16050
    #disallowed odex opcode
    #sput-volatile p152, field@16050
    nop

    const-wide/16 p79, 0x2d12

    aput-char p96, p132, p9

    rem-int p69, p69, p181

    #disallowed odex opcode
    #return-void-barrier
    nop

    div-double/2addr v3, v0

    #Field index out of bounds: 6053
    #iput-byte p2, v6, field@6053
    nop

    #Field index out of bounds: 51029
    #disallowed odex opcode
    #sget-volatile p42, field@51029
    nop

    rem-double/2addr v4, p3

    ushr-int/2addr p6, v3

    #disallowed odex opcode
    #iget-wide-quick p4, p6, field@0xf5cc
    nop

    rsub-int/lit8 p80, p207, -0x18

    #Field index out of bounds: 64312
    #disallowed odex opcode
    #iput-wide-volatile v4, p6, field@64312
    nop

    #Field index out of bounds: 47827
    #disallowed odex opcode
    #sput-wide-volatile p74, field@47827
    nop

    #Field index out of bounds: 9785
    #iput-boolean p6, p8, field@9785
    nop

    #Field index out of bounds: 49522
    #disallowed odex opcode
    #iget-volatile v2, v3, field@49522
    nop

    shl-int/2addr p2, p3

    #Method index out of bounds: 58989
    #disallowed odex opcode
    #invoke-object-init/range {p44119 .. p44251}, method@58989
    nop

    invoke-direct {p5}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    #Method index out of bounds: 34720
    #invoke-static {}, method@34720
    nop

    add-int p125, p58, p244

    #Field index out of bounds: 50702
    #iput p8, v2, field@50702
    nop

    goto/16 :goto_0

    if-le v2, p8, :cond_0

    #unknown opcode: 0x42
    nop

    #Field index out of bounds: 42832
    #iget v4, v6, field@42832
    nop

    ushr-int p179, p69, p17

    const-wide/16 p218, -0x2b3b

    cmpg-double p2, p173, p153

    sub-long p190, p228, p178

    goto/16 :goto_1

    const-wide/16 p120, -0x5a75

    double-to-float p1, p5

    const p201, -0x4d2388d0

    rsub-int/lit8 p97, p141, 0x11

    add-long p197, p43, p193

    #Type index out of bounds: 33169
    #new-array p0, v4, type@33169
    nop

    #Field index out of bounds: 6554
    #disallowed odex opcode
    #iput-volatile v5, v0, field@6554
    nop

    #Type index out of bounds: 4098
    #instance-of v4, p2, type@4098
    nop

    or-int/lit16 p3, v5, 0x7774

    int-to-long v3, p0

    #Field index out of bounds: 50808
    #sget-char p40, field@50808
    nop

    not-long v6, v2

    ushr-int/2addr p8, p0

    #disallowed odex opcode
    #invoke-virtual-quick/range {p40251 .. p40364}, vtable@46962
    nop

    array-length v0, p1

    and-int p196, p113, p162

    #Method index out of bounds: 57546
    #disallowed odex opcode
    #invoke-object-init/range {p4879 .. p5105}, method@57546
    nop

    #Field index out of bounds: 22478
    #iput-wide v0, v5, field@22478
    nop

    invoke-interface/range {p3513 .. p3725}, Landroid/content/SharedPreferences$Editor;->commit()Z

    cmpl-double p180, p146, p53

    sub-long/2addr p2, v4

    monitor-enter p47

    aget-object p32, p221, p241

    #unknown opcode: 0xec
    nop

    #Field index out of bounds: 34082
    #iput-short v3, p2, field@34082
    nop

    aput-object p83, p215, v3

    #unknown opcode: 0x41
    nop

    sub-double p119, p0, p131

    add-double/2addr p7, v2

    rem-long p35, p150, p185

    not-int p0, p3

    div-double/2addr p3, v6

    aget-wide p104, p243, p39

    long-to-float p1, p0

    not-int v3, p5

    monitor-enter p157

    move-object/from16 p157, p44500

    double-to-int v2, v0

    invoke-static/range {p31407 .. p31413}, Ljavax/mail/util/SharedFileInputStream;->markSupported()Z

    #Method index out of bounds: 9426
    #invoke-interface {}, method@9426
    nop

    #Field index out of bounds: 59483
    #sput-short p54, field@59483
    nop

    sput p55, Lorg/apache/harmony/awt/datatransfer/DataProxy;->unicodeTextClasses:[Ljava/lang/Class;

    int-to-float p2, p8
    :goto_1
    :goto_2
.end method
