.class final Lmyjava/awt/datatransfer/d;
.super Ljava/lang/Object;
.source "Landroid/app/admin/DevicePolicyManager;"


# static fields
.field private static instance:Lmyjava/awt/datatransfer/MimeTypeProcessor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assemble(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/lang/String;
    .locals 5

    :pswitch_data_0
    :cond_0
    cmpg-float p184, p238, p207

    #Field index out of bounds: 4965
    #iput-short v2, v1, field@4965
    nop

    aput-byte p166, p188, p55

    #invalid payload reference
    #packed-switch p58, :pswitch_data_0
    nop

    div-float p238, p112, p81

    #Field index out of bounds: 12759
    #iput-boolean p5, p3, field@12759
    nop

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@21158
    nop

    #unknown opcode: 0x73
    nop

    return p81

    #disallowed odex opcode
    #invoke-virtual-quick/range {p35267 .. p35300}, vtable@12872
    nop

    #Method index out of bounds: 20039
    #invoke-static/range {p63094 .. p63174}, method@20039
    nop

    const-wide/16 p183, 0x49bd

    aget-boolean p200, p80, p34

    rem-float p100, p40, p30

    if-lez p23, :cond_0

    #disallowed odex opcode
    #execute-inline/range {p46032 .. p46208}, inline@15978
    nop

    shr-long p13, p66, p175

    double-to-long p8, p1

    cmpg-double p169, v4, p199

    div-double/2addr v2, p3

    move v0, v4

    #Field index out of bounds: 51890
    #disallowed odex opcode
    #iget-object-volatile p6, v3, field@51890
    nop

    #Field index out of bounds: 21560
    #disallowed odex opcode
    #iget-volatile v4, v4, field@21560
    nop

    mul-int p247, p20, p15

    move-wide v1, p9

    #Method index out of bounds: 34884
    #invoke-interface {}, method@34884
    nop

    #disallowed odex opcode
    #iget-quick v4, p4, field@0x4496
    nop

    and-int p136, p118, p108

    xor-int/lit8 p59, p205, 0x24

    sub-float p203, p13, p135

    and-int/lit16 p3, v1, 0x519b

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@38436
    nop

    #disallowed odex opcode
    #iput-quick p3, p3, field@0x6eb5
    nop

    rem-double/2addr v4, p0

    #unknown opcode: 0xec
    nop
.end method

.method private static getNextMeaningfulIndex(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    #disallowed odex opcode
    #invoke-virtual-quick {}, vtable@57546
    nop

    float-to-int p6, p12

    rem-int/lit16 p0, p0, -0x30f5

    and-long p79, p50, p251

    sub-int/2addr p10, p8

    add-int p33, p184, p116

    rem-double/2addr p10, p10

    #Field index out of bounds: 13165
    #iget-byte p3, p12, field@13165
    nop

    goto/32 :goto_0

    #Method index out of bounds: 38229
    #invoke-interface/range {p11382 .. p11535}, method@38229
    nop
.end method

.method private static isMeaningfulChar(C)Z
    .locals 1

    :goto_0
    goto/32 :goto_0

    aget-wide p162, p148, p220

    return-void

    or-long/2addr p8, p13

    #Method index out of bounds: 58865
    #invoke-virtual {v0}, method@58865
    nop

    #Field index out of bounds: 60214
    #sput-short p12, field@60214
    nop
.end method

