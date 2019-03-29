.class public Lorg/apache/harmony/misc/a;
.super Ljava/lang/Object;
.source "Landroid/telephony/TelephonyManager;"


# static fields
.field public static final ARC_IA32:I = 0x1

.field public static final ARC_IA64:I = 0x2

.field public static final ARC_UNKNOWN:I = -0x1

.field public static final OS_LINUX:I = 0x2

.field public static final OS_UNKNOWN:I = -0x1

.field public static final OS_WINDOWS:I = 0x1

.field private static arc:I

.field private static os:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/apache/harmony/misc/SystemUtils;->os:I

    sput v0, Lorg/apache/harmony/misc/SystemUtils;->arc:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

