.class public Lcom/sun/mail/imap/protocol/f;
.super Lcom/sun/mail/imap/protocol/IMAPResponse;
.source "ANSWERED_BIT"


# static fields
.field private static final HEADER:[C

.field private static final TEXT:[C


# instance fields
.field private items:[Lcom/sun/mail/imap/protocol/Item;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2es
        0x48s
        0x45s
        0x41s
        0x44s
        0x45s
        0x52s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x2es
        0x54s
        0x45s
        0x58s
        0x54s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    return-void
.end method

.method public static getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 6

    :goto_0
    rem-double p207, p64, p221

    int-to-double p9, p7

    neg-int v3, v1

    #Field index out of bounds: 17781
    #iput-object p0, p0, field@17781
    nop

    float-to-double p6, p6

    const/4 v2, 0x7

    #Field index out of bounds: 51920
    #sget-boolean p135, field@51920
    nop

    #Field index out of bounds: 44304
    #sget-byte p123, field@44304
    nop

    not-int v1, v3

    if-eq v4, v0, :cond_1

    add-int/2addr p1, p4

    cmpg-float p88, p217, p126

    #Field index out of bounds: 14880
    #iget-byte v2, v1, field@14880
    nop

    #Method index out of bounds: 18985
    #invoke-virtual/range {p20534 .. p20642}, method@18985
    nop

    cmpl-double p96, p166, p218

    mul-double/2addr v0, v3

    goto :goto_0

    and-int/lit16 v0, v5, 0x35b7

    if-ltz p3, :cond_0

    move-result-wide p195

    or-int/lit8 p1, p161, 0x46

    #Field index out of bounds: 39045
    #iget v5, p4, field@39045
    nop

    neg-int p2, p2

    #Type index out of bounds: 12825
    #instance-of p8, p9, type@12825
    nop

    #Field index out of bounds: 27244
    #iget-char p5, p2, field@27244
    nop

    div-double p188, p217, p206

    aput-short p238, p205, p147

    #Method index out of bounds: 19926
    #invoke-direct {}, method@19926
    nop

    move-exception p118

    div-double/2addr v1, p3

    mul-float p82, p201, p199

    div-int/lit8 p50, p57, 0x48

    long-to-double v2, v4

    add-int/2addr v4, v0

    neg-long p7, v2

    aput-short p154, p168, p149

    throw p138

    div-int/lit16 p7, v5, 0x31b0

    int-to-char p3, p3

    double-to-float v5, p5
    :cond_0
    :cond_1
.end method

.method private match([C)Z
    .locals 6

    #Field index out of bounds: 9684
    #sget-short p12, field@9684
    nop

    ushr-int/lit8 p219, p242, 0x44

    float-to-int p8, v1

    xor-long/2addr v2, v4

    #unknown opcode: 0xa100
    nop

    #Method index out of bounds: 39519
    #invoke-static {}, method@39519
    nop

    and-int/lit8 p75, p10, 0xa

    goto/32 :goto_0

    #Field index out of bounds: 9634
    #disallowed odex opcode
    #sput-object-volatile v0, field@9634
    nop

    shr-int/lit8 p126, p221, -0x29

    sub-long/2addr p2, p2

    #Method index out of bounds: 26067
    #invoke-static {}, method@26067
    nop

    div-float p89, p116, p73

    move/16 p24078, p11561

    #disallowed odex opcode
    #return-void-barrier
    nop
    :goto_0
.end method

.method private parse()V
    .locals 4

    :pswitch_data_0
    :array_0
    :pswitch_data_1
    :cond_0
    :cond_1
    :cond_2
    :cond_3
    :cond_4
    :cond_5
    :cond_6
    :cond_7
    :cond_8
    xor-long p81, p166, p141

    shl-long/2addr p4, v2

    #disallowed odex opcode
    #iget-wide-quick p7, p7, field@0x56de
    nop

    and-int/lit8 p94, p165, -0x1d

    sub-double p124, p150, p66

    long-to-float p2, p3

    or-int/2addr p11, p11

    ushr-int/2addr p2, p2

    #Field index out of bounds: 2887
    #iput-byte p6, p7, field@2887
    nop

    #disallowed odex opcode
    #execute-inline {p9}, inline@11661
    nop

    div-double p200, p231, p245

    move-wide/16 p1760, p27354

    rem-long/2addr v3, p0

    move/16 p56715, p16492

    #Field index out of bounds: 8767
    #iput-wide p7, p2, field@8767
    nop

    #Field index out of bounds: 17845
    #sget-boolean p144, field@17845
    nop

    #Field index out of bounds: 50646
    #iget-char p9, v0, field@50646
    nop

    int-to-long p11, p1

    add-float p91, p153, p21

    sub-int/2addr v2, p8

    shr-int/2addr p3, p2

    #disallowed odex opcode
    #iget-object-quick v1, p4, field@0xdf94
    nop

    mul-int p184, p16, p183

    rem-long/2addr p3, p1

    div-int/lit16 p9, p5, -0x1870

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@65453
    nop

    #Field index out of bounds: 61642
    #iput-boolean v3, v2, field@61642
    nop

    #unknown opcode: 0x3e
    nop

    #Field index out of bounds: 48659
    #disallowed odex opcode
    #sput-volatile p80, field@48659
    nop

    #unknown opcode: 0x73
    nop

    #Field index out of bounds: 60667
    #iget-wide v2, p6, field@60667
    nop

    aput-object p42, p180, p237

    #invalid payload reference
    #packed-switch p82, :pswitch_data_0
    nop

    cmp-long p127, p84, p243

    if-gtz p243, :cond_6

    cmpg-double p189, p221, p198

    #Field index out of bounds: 37822
    #sput-object p3, field@37822
    nop

    monitor-enter p156

    float-to-double p10, p1

    aput-char p182, p158, p114

    shr-int/lit8 p91, p180, 0x55

    rem-float p134, p46, p202

    #unknown opcode: 0x40
    nop

    shl-int/lit8 p50, p243, 0x34

    rem-int p143, p237, p92

    #disallowed odex opcode
    #iget-wide-quick p0, v0, field@0x3185
    nop

    if-gez p10, :cond_5

    div-double/2addr p1, p5

    long-to-int v3, v2

    move/16 p4818, p10611

    if-gez p145, :cond_1

    int-to-byte p0, v1

    or-int p96, p172, p119

    const-wide/16 p240, -0x23d0

    #unknown opcode: 0x7a
    nop

    #Field index out of bounds: 43826
    #iput-byte v0, v1, field@43826
    nop

    or-long/2addr v3, p4

    cmpl-double p35, p21, p24

    aput-wide p71, p178, p235

    int-to-float p11, p1

    aput-byte p216, p244, p8

    #Field index out of bounds: 47661
    #iget-object p9, p5, field@47661
    nop

    #disallowed odex opcode
    #execute-inline/range {p19501 .. p19638}, inline@52319
    nop

    rem-float/2addr p7, v0

    #invalid payload reference
    #packed-switch p188, :pswitch_data_1
    nop

    #Type index out of bounds: 47686
    #check-cast p29, type@47686
    nop

    aget-char p243, p78, p172

    double-to-int p1, p6

    ushr-int/2addr v1, p8

    int-to-float p4, v3

    #unknown opcode: 0xec
    nop

    #String index out of bounds: 288320842
    #const-string/jumbo p43, string@288320842
    nop

    #Method index out of bounds: 61402
    #invoke-static/range {p46969 .. p47166}, method@61402
    nop

    aput-byte p186, p117, p77

    #unknown opcode: 0x43
    nop

    shl-int/2addr p5, p11

    #Field index out of bounds: 50266
    #sget-byte p247, field@50266
    nop

    #Method index out of bounds: 17637
    #disallowed odex opcode
    #invoke-object-init/range {p32631 .. p32729}, method@17637
    nop

    #disallowed odex opcode
    #iget-quick p9, p7, field@0x3215
    nop

    sub-long/2addr p1, v0

    aget-short p24, p51, p87

    shr-int/2addr p3, p9

    sub-int/2addr v2, p10

    if-eqz p188, :cond_3

    #Field index out of bounds: 2757
    #disallowed odex opcode
    #sput-volatile p104, field@2757
    nop

    move-wide/from16 p43, p15678

    const-wide/32 p156, 0x64e4f925

    #disallowed odex opcode
    #execute-inline {}, inline@26025
    nop

    or-int/lit8 p89, p31, -0x36

    and-int p180, p101, p40

    aget p96, p105, p78

    #Field index out of bounds: 38970
    #iget-wide p3, p4, field@38970
    nop

    rem-int p51, p210, p202

    neg-float p6, p11

    sub-float p65, p112, p238

    if-gtz p37, :cond_0

    mul-long p107, p95, p175

    rem-int p156, p84, p34

    add-double p155, p103, p41

    float-to-double p11, p4

    and-int p17, p96, p140

    #unknown opcode: 0x73
    nop

    rsub-int p0, p6, 0x719

    aget-object p83, p30, p123

    #was invalid verification error type: 29
    #Method index out of bounds: 45512
    #disallowed odex opcode
    #throw-verification-error generic-error, method@45512
    nop

    sub-float p54, p56, p236

    move/16 p51459, p57769

    #Field index out of bounds: 23699
    #disallowed odex opcode
    #iput-volatile v3, p2, field@23699
    nop

    mul-long p107, p157, p14

    add-double p55, p28, p200

    ushr-int p193, p11, p53

    #Field index out of bounds: 37741
    #disallowed odex opcode
    #iput-volatile v3, p0, field@37741
    nop

    #Field index out of bounds: 51995
    #iget v1, v2, field@51995
    nop

    and-int/lit16 v2, v2, 0x35e1

    #unknown opcode: 0xec
    nop

    int-to-long p0, p5

    if-lez p127, :cond_b

    not-long p7, p8

    #Method index out of bounds: 8611
    #invoke-direct {p10, p5, p11, p7, p10}, method@8611
    nop

    move-exception p174

    #Field index out of bounds: 14691
    #sget-boolean p159, field@14691
    nop

    add-int/lit8 p29, p0, 0x61

    #Type index out of bounds: 30454
    #filled-new-array {}, type@30454
    nop

    rem-int/2addr p11, p4

    #Method index out of bounds: 34998
    #invoke-direct/range {p59540 .. p59762}, method@34998
    nop

    sub-float p79, p177, p221

    shl-int/lit8 p188, p10, -0x39

    add-long/2addr v2, p11

    mul-long/2addr p5, p4

    and-int/2addr p10, p6

    sub-float p10, p16, p189

    int-to-byte p10, p2

    and-long p114, p108, p225

    xor-int/lit8 p154, p248, -0x9

    or-int/lit8 p112, p15, -0x5d

    #disallowed odex opcode
    #iget-object-quick p1, p3, field@0x66a8
    nop

    #Field index out of bounds: 6684
    #iget-object p6, p6, field@6684
    nop

    if-gt p4, p9, :cond_2

    xor-int p163, p61, p31

    sub-float/2addr v3, v3

    #Field index out of bounds: 15410
    #disallowed odex opcode
    #iput-wide-volatile p10, v3, field@15410
    nop

    mul-float/2addr p7, p4

    shr-int/lit8 p251, p17, -0x5b

    move/16 p22752, p14908

    move/16 p40288, p34802

    if-nez p237, :cond_4

    int-to-float v3, v0

    #Method index out of bounds: 45823
    #invoke-virtual/range {p55803 .. p55913}, method@45823
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2, p6, v0}, vtable@23429
    nop

    #Field index out of bounds: 3476
    #iput-short v1, p5, field@3476
    nop

    rsub-int/lit8 p19, p192, 0x68

    move-result-wide p4

    aput-wide p220, p61, p135

    #Field index out of bounds: 39027
    #sget-boolean p163, field@39027
    nop

    long-to-double p11, p4

    #Method index out of bounds: 36024
    #invoke-virtual/range {p5553 .. p5745}, method@36024
    nop

    shr-int/lit8 p17, p226, 0x46

    div-long p159, p144, p109

    xor-int p220, p195, p96

    neg-long p5, v0

    float-to-int p9, p8

    if-gtz p130, :cond_8

    ushr-long/2addr p8, p0

    #Field index out of bounds: 21896
    #iget-boolean v2, p9, field@21896
    nop

    if-gez p169, :cond_7

    div-long/2addr p11, p4

    #disallowed odex opcode
    #iput-wide-quick p10, p4, field@0xfc51
    nop

    rem-int/lit8 p78, p184, -0x66

    monitor-enter p249

    #Type index out of bounds: 44764
    #filled-new-array {}, type@44764
    nop

    #Field index out of bounds: 24974
    #sget p221, field@24974
    nop

    int-to-float p8, v3

    #invalid payload reference
    #fill-array-data p43, :array_0
    nop

    move-object/16 p58341, p13284

    sub-double p111, p217, p225

    #disallowed odex opcode
    #execute-inline/range {p10473 .. p10545}, inline@48055
    nop

    rem-int/lit16 p11, p11, 0x630e

    move/from16 p38, p9888

    iput v3, p2, Lcom/rayark/Cytus/full/R$id;->com_facebook_picker_title_bar:I

    move-object/16 p46005, p38574

    aput p130, p104, p11

    #Field index out of bounds: 3935
    #disallowed odex opcode
    #iput-volatile p9, p10, field@3935
    nop

    if-ge p0, p4, :cond_9

    not-int p0, p6

    const-wide p162, -0xd53763e0216a7acL

    aget-short p30, p177, p60

    if-lez p149, :cond_c

    cmpg-float p188, p5, p114

    mul-float/2addr p6, v3

    #Field index out of bounds: 28270
    #sget-boolean p39, field@28270
    nop

    #Method index out of bounds: 61560
    #invoke-static {p11, p9, p11}, method@61560
    nop

    rem-float p228, p12, p105

    #Field index out of bounds: 44218
    #disallowed odex opcode
    #sget-wide-volatile v1, field@44218
    nop

    or-int/lit16 v2, p2, -0x7cd5

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@57426
    nop

    #Field index out of bounds: 30615
    #iput p3, v3, field@30615
    nop

    throw p32

    aget p159, p171, p242

    if-eq p5, v3, :cond_a

    ushr-long/2addr p9, p2

    rem-double p204, p155, p225

    #Field index out of bounds: 44155
    #iput p5, p9, field@44155
    nop

    #Field index out of bounds: 20181
    #sput p46, field@20181
    nop

    #unknown opcode: 0x7a
    nop
    :cond_9
    :cond_a
    :cond_b
    :cond_c
.end method


# virtual methods
.method public getItem(I)Lcom/sun/mail/imap/protocol/Item;
    .locals 1

    div-double p82, p115, p18

    if-gt p0, p8, :cond_0

    return p236
    :cond_0
.end method

.method public getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 2

    rem-int/lit16 p11, v0, -0x2c74

    sub-float/2addr p11, p2

    #disallowed odex opcode
    #execute-inline {p1, p8, p3, p12, p7}, inline@61180
    nop

    add-long p111, p150, p250

    const/high16 p126, 0x6c120000

    aget-object p119, p121, p133

    cmpg-double p61, p73, p189

    move/16 p14142, p20514

    #Method index out of bounds: 45202
    #invoke-super/range {p6002 .. p6013}, method@45202
    nop

    #Field index out of bounds: 19057
    #iget-char p2, p9, field@19057
    nop

    cmpl-float p91, p253, p12

    div-int p231, p59, p192
.end method

