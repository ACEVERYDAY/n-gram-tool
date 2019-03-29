.class public Lcom/sun/activation/registries/f;
.super Ljava/lang/Object;
.source ".auth"


# instance fields
.field private extension:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/activation/registries/MimeTypeEntry;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/activation/registries/MimeTypeEntry;->extension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileExtension()Ljava/lang/String;
    .locals 1

    move-object/16 p29352, p18326
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    add-float p132, p2, p188

    int-to-byte p4, p7
.end method

