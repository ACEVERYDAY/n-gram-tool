.class public final Lru/atrant/shake2playnext/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/atrant/shake2playnext/R;
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

.field public static final com_admob_android_ads_AdView:[I

.field public static final com_admob_android_ads_AdView_backgroundColor:I = 0x0

.field public static final com_admob_android_ads_AdView_keywords:I = 0x3

.field public static final com_admob_android_ads_AdView_primaryTextColor:I = 0x1

.field public static final com_admob_android_ads_AdView_refreshInterval:I = 0x4

.field public static final com_admob_android_ads_AdView_secondaryTextColor:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 361
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lru/atrant/shake2playnext/R$styleable;->QWAdView:[I

    .line 609
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lru/atrant/shake2playnext/R$styleable;->com_admob_android_ads_AdView:[I

    .line 320
    return-void

    .line 361
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

    .line 609
    :array_1
    .array-data 4
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
