.class Ljavax/mail/internet/x;
.super Ljava/lang/Object;
.source "Illegal route-addr"


# instance fields
.field private sb:Ljava/lang/StringBuffer;

.field private used:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->sb:Ljava/lang/StringBuffer;

    iput p1, p0, Ljavax/mail/internet/ParameterList$ToStringBuffer;->used:I

    return-void
.end method


# virtual methods
