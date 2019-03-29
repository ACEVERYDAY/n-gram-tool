.class final Lmyjava/awt/datatransfer/b;
.super Ljava/lang/Object;
.source "Landroid/app/Service;"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x5ce4582f8fa3edecL


# instance fields
.field private parameters:Ljava/util/Hashtable;

.field private primaryType:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private systemParameters:Ljava/util/Hashtable;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->primaryType:Ljava/lang/String;

    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->subType:Ljava/lang/String;

    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->parameters:Ljava/util/Hashtable;

    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->systemParameters:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->primaryType:Ljava/lang/String;

    iput-object p2, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->subType:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->parameters:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->systemParameters:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic access$0(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/util/Hashtable;
    .locals 1

    sub-double/2addr p10, p5

    rem-float p180, p253, p242
.end method

