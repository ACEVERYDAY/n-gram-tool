.class public abstract Ljavax/activation/m;
.super Ljava/lang/Object;
.source "Dec"


# static fields
.field private static defaultMap:Ljavax/activation/FileTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;
    .locals 1

    #Field index out of bounds: 45811
    #sget-wide p143, field@45811
    nop

    #Field index out of bounds: 12768
    #sget-short p197, field@12768
    nop

    shl-int/2addr p13, v0

    neg-double p9, p10

    add-float/2addr v0, p4

    #Method index out of bounds: 60862
    #invoke-interface {}, method@60862
    nop

    long-to-float p10, p13

    #invalid payload reference
    #packed-switch p179, :pswitch_data_0
    nop
    :pswitch_data_0
.end method

