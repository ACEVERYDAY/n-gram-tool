.class public abstract Ljavax/mail/c;
.super Ljava/lang/Object;
.source "Folder is not Open"


# instance fields
.field private requestingPort:I

.field private requestingPrompt:Ljava/lang/String;

.field private requestingProtocol:Ljava/lang/String;

.field private requestingSite:Ljava/net/InetAddress;

.field private requestingUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 2

    :cond_0
    :cond_1
    array-length p10, p11

    shl-int p242, p172, p220

    div-long/2addr p9, p11

    ushr-int p162, p90, p175

    move-wide/16 p42456, p19444

    if-ltz p165, :cond_1

    if-nez p105, :cond_0
.end method


# virtual methods
