.class public final Lcom/qwapi/adclient/android/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qwapi/adclient/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final QWAdView:[I

.field public static final QWAdView_adEventListenerClass:I = 0xa

.field public static final QWAdView_adInterval:I = 0x3

.field public static final QWAdView_animation:I = 0x4

.field public static final QWAdView_bgColor:I = 0xe

.field public static final QWAdView_defaultAdClickThru:I = 0x8

.field public static final QWAdView_defaultAdImage:I = 0x7

.field public static final QWAdView_displayMode:I = 0x2

.field public static final QWAdView_mediaType:I = 0x1

.field public static final QWAdView_placement:I = 0x0

.field public static final QWAdView_publisherId:I = 0x6

.field public static final QWAdView_renderAdOnCreate:I = 0xc

.field public static final QWAdView_requestMode:I = 0xd

.field public static final QWAdView_section:I = 0x9

.field public static final QWAdView_siteId:I = 0x5

.field public static final QWAdView_testMode:I = 0xb

.field public static final QWAdView_textColor:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qwapi/adclient/android/R$styleable;->QWAdView:[I

    return-void

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
