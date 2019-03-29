.class public final Lc/aguoqkle/n/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PhoneNum"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FirstLogin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RecipientDown"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Smskeyword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UserAgent"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DomainUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BackupUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "StartTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "InterDay"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Intervaltime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DownSize"

    aput-object v2, v0, v1

    sput-object v0, Lc/aguoqkle/n/s;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
