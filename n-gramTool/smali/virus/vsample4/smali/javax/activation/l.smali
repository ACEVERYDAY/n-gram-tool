.class public Ljavax/activation/l;
.super Ljava/lang/Object;
.source "Date"

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field private _file:Ljava/io/File;

.field private typeMap:Ljavax/activation/FileTypeMap;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;

    iput-object v0, p0, Ljavax/activation/FileDataSource;->typeMap:Ljavax/activation/FileTypeMap;

    iput-object p1, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    :cond_0
    #disallowed odex opcode
    #sget-wide-volatile p224, Lmyjava/awt/datatransfer/a;->serialVersionUID:J
    nop

    #unknown opcode: 0xec
    nop

    add-double/2addr p2, p12

    #disallowed odex opcode
    #execute-inline {}, inline@25965
    nop

    #String index out of bounds: 12519
    #const-string p193, string@12519
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {p13, p0, v1, p12}, vtable@4358
    nop

    #Field index out of bounds: 64568
    #iput-wide p1, p1, field@64568
    nop

    mul-double/2addr p1, p4

    and-long/2addr p1, p7

    array-length p7, p8

    and-int/lit8 p1, p253, -0x29

    if-ge v0, p8, :cond_0

    rem-int/2addr p8, p0

    and-int p93, p149, p242
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    sub-long/2addr p11, p4

    shr-long p140, p157, p125
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    return-wide p111

    #Field index out of bounds: 31807
    #disallowed odex opcode
    #iget-wide-volatile v1, p8, field@31807
    nop

    add-int p149, p180, p211

    long-to-double p3, p3

    #Field index out of bounds: 7522
    #sget-char p249, field@7522
    nop
.end method

