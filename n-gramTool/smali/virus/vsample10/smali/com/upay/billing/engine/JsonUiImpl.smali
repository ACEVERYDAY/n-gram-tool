.class public Lcom/upay/billing/engine/JsonUiImpl;
.super Lcom/upay/billing/JsonUi;


# static fields
.field private static final AUTO:I = -0x80000000

.field private static final CONTROLS:[Ljava/lang/Object;

.field private static final ENUMS:[Ljava/lang/Object;

.field private static final GRAVITIES:[Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "JsonUiImpl"

.field private static mapControls:Ljava/util/HashMap;

.field private static mapEnums:Ljava/util/HashMap;

.field private static mapGravities:Ljava/util/HashMap;

.field private static ptnDim:Ljava/util/regex/Pattern;


# instance fields
.field private activity:Lcom/upay/billing/UpayActivity;

.field private edt:Landroid/widget/EditText;

.field private packageName:Ljava/lang/String;

.field private rand:Ljava/util/Random;

.field private resources:Landroid/content/res/Resources;

.field private resultCode:I

.field private views:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "relative-layout"

    aput-object v1, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "linear-layout"

    aput-object v1, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "scroll-view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "image"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "text"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "button"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "checkbox"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "progressbar"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "spinner"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "edit-text"

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    sput-object v0, Lcom/upay/billing/engine/JsonUiImpl;->CONTROLS:[Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/JsonUiImpl;->mapControls:Ljava/util/HashMap;

    const/16 v0, 0x46

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "auto"

    aput-object v1, v0, v2

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "fill"

    aput-object v1, v0, v6

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "wrap"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "horizontal"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "vertical"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "left"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "right"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "hcenter"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "top"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "bottom"

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v3, "vcenter"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x16

    const-string v3, "above"

    aput-object v3, v0, v1

    const/16 v1, 0x17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x18

    const-string v3, "below"

    aput-object v3, v0, v1

    const/16 v1, 0x19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    const-string v3, "left-of"

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    const-string v3, "right-of"

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    const-string v3, "align-top"

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x20

    const-string v3, "align-bottom"

    aput-object v3, v0, v1

    const/16 v1, 0x21

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string v3, "align-left"

    aput-object v3, v0, v1

    const/16 v1, 0x23

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x24

    const-string v3, "align-right"

    aput-object v3, v0, v1

    const/16 v1, 0x25

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v3, "align-baseline"

    aput-object v3, v0, v1

    const/16 v1, 0x27

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x28

    const-string v3, "center"

    aput-object v3, v0, v1

    const/16 v1, 0x29

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    const-string v3, "center-crop"

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    const-string v3, "center-inside"

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    const-string v3, "fit-center"

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v1

    const/16 v1, 0x30

    const-string v3, "fit-end"

    aput-object v3, v0, v1

    const/16 v1, 0x31

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v1

    const/16 v1, 0x32

    const-string v3, "fit-start"

    aput-object v3, v0, v1

    const/16 v1, 0x33

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v1

    const/16 v1, 0x34

    const-string v3, "fit-xy"

    aput-object v3, v0, v1

    const/16 v1, 0x35

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v1

    const/16 v1, 0x36

    const-string v3, "matrix"

    aput-object v3, v0, v1

    const/16 v1, 0x37

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v1

    const/16 v1, 0x38

    const-string v3, "visible"

    aput-object v3, v0, v1

    const/16 v1, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    const-string v3, "invisible"

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string v3, "gone"

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v3, "start"

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    aput-object v3, v0, v1

    const/16 v1, 0x40

    const-string v3, "middle"

    aput-object v3, v0, v1

    const/16 v1, 0x41

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    aput-object v3, v0, v1

    const/16 v1, 0x42

    const-string v3, "end"

    aput-object v3, v0, v1

    const/16 v1, 0x43

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    aput-object v3, v0, v1

    const/16 v1, 0x44

    const-string v3, "marquee"

    aput-object v3, v0, v1

    const/16 v1, 0x45

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    aput-object v3, v0, v1

    sput-object v0, Lcom/upay/billing/engine/JsonUiImpl;->ENUMS:[Ljava/lang/Object;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "center"

    aput-object v1, v0, v2

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "left"

    aput-object v1, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "right"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "top"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "bottom"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "start"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const v3, 0x800003

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "end"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const v3, 0x800005

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "no-gravity"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "fill"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const/16 v3, 0x77

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "fill-horizontal"

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v3, "fill-vertical"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const/16 v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    sput-object v0, Lcom/upay/billing/engine/JsonUiImpl;->GRAVITIES:[Ljava/lang/Object;

    const-string v0, "(\\-?[0-9\\.]+)(dp|dip|sp|sip|px)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/JsonUiImpl;->ptnDim:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/JsonUiImpl;->mapEnums:Ljava/util/HashMap;

    sget-object v0, Lcom/upay/billing/engine/JsonUiImpl;->ENUMS:[Ljava/lang/Object;

    array-length v3, v0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    sget-object v4, Lcom/upay/billing/engine/JsonUiImpl;->mapEnums:Ljava/util/HashMap;

    sget-object v0, Lcom/upay/billing/engine/JsonUiImpl;->ENUMS:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lcom/upay/billing/engine/JsonUiImpl;->ENUMS:[Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    sget-object v0, Lcom/upay/billing/engine/JsonUiImpl;->GRAVITIES:[Ljava/lang/Object;

    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_1

    sget-object v5, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    sget-object v0, Lcom/upay/billing/engine/JsonUiImpl;->GRAVITIES:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/upay/billing/engine/JsonUiImpl;->GRAVITIES:[Ljava/lang/Object;

    add-int/lit8 v6, v3, 0x1

    aget-object v1, v1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/JsonUiImpl;->mapControls:Ljava/util/HashMap;

    sget-object v0, Lcom/upay/billing/engine/JsonUiImpl;->CONTROLS:[Ljava/lang/Object;

    array-length v3, v0

    :goto_2
    if-ge v2, v3, :cond_2

    sget-object v4, Lcom/upay/billing/engine/JsonUiImpl;->mapControls:Ljava/util/HashMap;

    sget-object v0, Lcom/upay/billing/engine/JsonUiImpl;->CONTROLS:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/upay/billing/engine/JsonUiImpl;->CONTROLS:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/upay/billing/JsonUi;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->rand:Ljava/util/Random;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->resources:Landroid/content/res/Resources;

    const-string v0, ""

    iput-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->resultCode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->views:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$002(Lcom/upay/billing/engine/JsonUiImpl;I)I
    .locals 0

    iput p1, p0, Lcom/upay/billing/engine/JsonUiImpl;->resultCode:I

    return p1
.end method

.method static synthetic access$100(Lcom/upay/billing/engine/JsonUiImpl;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->edt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upay/billing/engine/JsonUiImpl;)Lcom/upay/billing/UpayActivity;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    return-object v0
.end method

.method private final applyAligns(Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ \t]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/upay/billing/engine/JsonUiImpl;->mapEnums:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v0, v1

    :goto_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move v0, v1

    goto :goto_2

    :pswitch_2
    add-int/lit8 v4, v1, 0x1

    if-lt v4, v3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    aget-object v4, v2, v1

    invoke-direct {p0, v4}, Lcom/upay/billing/engine/JsonUiImpl;->viewId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-virtual {v0}, Lcom/upay/billing/UpayActivity;->getExt()Lcom/upay/billing/UpayActivityExt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-virtual {v0, v1, p1}, Lcom/upay/billing/UpayActivityExt;->getDrawable(Lcom/upay/billing/UpayActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->resources:Landroid/content/res/Resources;

    const-string v1, "drawable"

    invoke-direct {p0, p1, v1}, Lcom/upay/billing/engine/JsonUiImpl;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method private getView(Landroid/view/ViewGroup;Lcom/upay/billing/utils/Json;Ljava/util/ArrayList;)Landroid/view/View;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_26

    if-eqz p1, :cond_26

    const-string v1, "id"

    invoke-direct {p0, v4, v1}, Lcom/upay/billing/engine/JsonUiImpl;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_26

    :goto_0
    if-nez v1, :cond_d

    const-string v0, "type"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown control type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/upay/billing/engine/JsonUiImpl;->mapControls:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :sswitch_0
    const-string v0, "layout"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "layout"

    invoke-direct {p0, v0, v1}, Lcom/upay/billing/engine/JsonUiImpl;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-virtual {v2}, Lcom/upay/billing/UpayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid layout property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "gravity"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    :cond_3
    const-string v0, "horizontal-gravity"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    :cond_4
    const-string v0, "vertical-gravity"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    :cond_5
    const-string v0, "children"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    invoke-direct {p0, v1, v0, p3}, Lcom/upay/billing/engine/JsonUiImpl;->getView(Landroid/view/ViewGroup;Lcom/upay/billing/utils/Json;Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :sswitch_2
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "orientation"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/upay/billing/engine/JsonUiImpl;->mapEnums:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_6
    const-string v0, "gravity"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_7
    const-string v0, "horizontal-gravity"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    :cond_8
    const-string v0, "vertical-gravity"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    :cond_9
    const-string v0, "children"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    invoke-direct {p0, v1, v0, p3}, Lcom/upay/billing/engine/JsonUiImpl;->getView(Landroid/view/ViewGroup;Lcom/upay/billing/utils/Json;Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :sswitch_3
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const-string v0, "scrollbar-size"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setScrollBarSize(I)V

    :cond_a
    const-string v0, "scrollbar-style"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    :cond_b
    const-string v0, "children"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    invoke-direct {p0, v1, v0, p3}, Lcom/upay/billing/engine/JsonUiImpl;->getView(Landroid/view/ViewGroup;Lcom/upay/billing/utils/Json;Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    goto :goto_4

    :sswitch_4
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "image-src"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct {p0, v0}, Lcom/upay/billing/engine/JsonUiImpl;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    const-string v0, "image-scaleType"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/upay/billing/engine/JsonUiImpl;->mapEnums:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_d
    :goto_5
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object v1, v0, v7

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_19

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "text"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-virtual {v5}, Lcom/upay/billing/UpayActivity;->getExt()Lcom/upay/billing/UpayActivityExt;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5, v0, v2}, Lcom/upay/billing/UpayActivityExt;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    :cond_e
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    const-string v2, "text-color"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    const-string v2, "text-size"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-static {v5, v2, v9}, Lcom/upay/billing/engine/JsonUiImpl;->parseDimension(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_11
    const-string v2, "max-lines"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_12
    const-string v2, "single-line"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "single-line"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_13
    const-string v2, "ellipsize"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    sget-object v5, Lcom/upay/billing/engine/JsonUiImpl;->mapEnums:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    check-cast v2, Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_14
    const-string v2, "marqueerepeatlimit"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    :cond_15
    const-string v2, "focusable"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "focusable"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    :cond_16
    const-string v2, "focusableintouchmode"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "focusableintouchmode"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    :cond_17
    const-string v2, "scrollhorizontally"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "scrollhorizontally"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_18
    const-string v2, "gravity"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-object v5, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_19
    const-string v0, "padding"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, "[ ]+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    if-lez v5, :cond_1a

    array-length v5, v2

    packed-switch v5, :pswitch_data_0

    move-object v0, v2

    :goto_6
    iget-object v2, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    aget-object v5, v0, v6

    invoke-static {v2, v5, v9}, Lcom/upay/billing/engine/JsonUiImpl;->parseDimension(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v2

    float-to-int v2, v2

    iget-object v5, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    aget-object v6, v0, v3

    invoke-static {v5, v6, v9}, Lcom/upay/billing/engine/JsonUiImpl;->parseDimension(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    aget-object v7, v0, v7

    invoke-static {v6, v7, v9}, Lcom/upay/billing/engine/JsonUiImpl;->parseDimension(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    aget-object v0, v0, v8

    invoke-static {v7, v0, v9}, Lcom/upay/billing/engine/JsonUiImpl;->parseDimension(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v5, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1a
    const-string v0, "background"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1b
    :goto_7
    const-string v0, "visibility"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object v2, Lcom/upay/billing/engine/JsonUiImpl;->mapEnums:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    const-string v0, "content-description"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1d
    const-string v0, "result-code"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "ok"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v0, -0x1

    :goto_8
    new-instance v2, Lcom/upay/billing/engine/JsonUiImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/upay/billing/engine/JsonUiImpl$1;-><init>(Lcom/upay/billing/engine/JsonUiImpl;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1f

    const/high16 v0, 0x3f000000    # 0.5f

    iget-object v2, p0, Lcom/upay/billing/engine/JsonUiImpl;->rand:Ljava/util/Random;

    const v3, 0xffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    :cond_1f
    if-eqz v4, :cond_20

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->views:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object v1

    :sswitch_5
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_5

    :sswitch_6
    new-instance v1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    goto/16 :goto_5

    :sswitch_7
    new-instance v1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {v1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v0, "checked"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    :sswitch_8
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const-string v0, "indeterminateDrawable"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-direct {p0, v0}, Lcom/upay/billing/engine/JsonUiImpl;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :sswitch_9
    new-instance v1, Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {v1, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    goto/16 :goto_5

    :sswitch_a
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->edt:Landroid/widget/EditText;

    const-string v0, "hint"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/upay/billing/engine/JsonUiImpl;->edt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_21
    iget-object v1, p0, Lcom/upay/billing/engine/JsonUiImpl;->edt:Landroid/widget/EditText;

    goto/16 :goto_5

    :pswitch_0
    aget-object v2, v2, v3

    aput-object v2, v0, v6

    aput-object v2, v0, v7

    aput-object v2, v0, v8

    aput-object v2, v0, v3

    goto/16 :goto_6

    :pswitch_1
    aget-object v5, v2, v3

    aput-object v5, v0, v8

    aput-object v5, v0, v3

    aget-object v2, v2, v7

    aput-object v2, v0, v6

    aput-object v2, v0, v7

    goto/16 :goto_6

    :pswitch_2
    aget-object v5, v2, v3

    aput-object v5, v0, v3

    aget-object v5, v2, v8

    aput-object v5, v0, v8

    aget-object v2, v2, v7

    aput-object v2, v0, v6

    aput-object v2, v0, v7

    goto/16 :goto_6

    :cond_22
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v2, v5, :cond_23

    invoke-direct {p0, v0}, Lcom/upay/billing/engine/JsonUiImpl;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_23
    invoke-direct {p0, v0}, Lcom/upay/billing/engine/JsonUiImpl;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_24
    const-string v2, "canceled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    move v0, v3

    goto/16 :goto_8

    :cond_25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_8

    :cond_26
    move-object v1, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1a -> :sswitch_9
        0x1b -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private identifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->resources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/upay/billing/engine/JsonUiImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final parseDimension(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return p2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/upay/billing/engine/JsonUiImpl;->mapEnums:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    sget-object v0, Lcom/upay/billing/engine/JsonUiImpl;->ptnDim:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "px"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p0, p2}, Lcom/upay/billing/utils/Util;->sp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float p2, v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float p2, v0

    goto :goto_0

    :cond_4
    invoke-static {p0, p2}, Lcom/upay/billing/utils/Util;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float p2, v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method private final viewId(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->views:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "id"

    invoke-direct {p0, p1, v0}, Lcom/upay/billing/engine/JsonUiImpl;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public doCreate(Lcom/upay/billing/UpayActivity;Lcom/upay/billing/utils/Json;)V
    .locals 11

    const-string v0, "JsonUiImpl"

    const-string v1, "doCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/upay/billing/engine/JsonUiImpl;->activity:Lcom/upay/billing/UpayActivity;

    invoke-virtual {p1}, Lcom/upay/billing/UpayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/upay/billing/UpayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->packageName:Ljava/lang/String;

    const-string v0, "window-no-title"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->requestWindowFeature(I)Z

    :cond_0
    const-string v0, "window-full-screen"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/upay/billing/UpayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "content-view"

    invoke-virtual {p2, v2}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/upay/billing/engine/JsonUiImpl;->getView(Landroid/view/ViewGroup;Lcom/upay/billing/utils/Json;Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/upay/billing/utils/Json;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_7

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_1
    move-object v3, v2

    :cond_2
    const-string v2, "width"

    invoke-virtual {v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, -0x31000000

    invoke-static {p1, v2, v4}, Lcom/upay/billing/engine/JsonUiImpl;->parseDimension(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v2

    const/high16 v4, -0x31000000

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_3

    float-to-int v2, v2

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    const-string v2, "height"

    invoke-virtual {v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, -0x31000000

    invoke-static {p1, v2, v4}, Lcom/upay/billing/engine/JsonUiImpl;->parseDimension(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v2

    const/high16 v4, -0x31000000

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    float-to-int v2, v2

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_9

    move-object v2, v3

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v4, "align"

    invoke-virtual {v1, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/upay/billing/engine/JsonUiImpl;->applyAligns(Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;)V

    :cond_5
    :goto_2
    instance-of v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_6

    const-string v2, "margin"

    invoke-virtual {v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[ ]+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-lez v4, :cond_6

    array-length v4, v2

    packed-switch v4, :pswitch_data_0

    :goto_3
    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, 0x3

    aget-object v4, v2, v4

    const/4 v7, 0x0

    invoke-static {p1, v4, v7}, Lcom/upay/billing/engine/JsonUiImpl;->parseDimension(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v4

    float-to-int v4, v4

    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/upay/billing/engine/JsonUiImpl;->parseDimension(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lcom/upay/billing/engine/JsonUiImpl;->parseDimension(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x2

    aget-object v2, v2, v9

    const/4 v9, 0x0

    invoke-static {p1, v2, v9}, Lcom/upay/billing/engine/JsonUiImpl;->parseDimension(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v4, v7, v8, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_7
    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_8

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_1

    :cond_8
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/16 :goto_1

    :cond_9
    instance-of v2, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_5

    const-string v2, "weight"

    invoke-virtual {v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object v2, v3

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_a
    const-string v2, "layout-gravity"

    invoke-virtual {v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/upay/billing/engine/JsonUiImpl;->mapGravities:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v2, v3

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_2

    :pswitch_0
    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x0

    aget-object v2, v2, v10

    aput-object v2, v1, v9

    aput-object v2, v1, v8

    aput-object v2, v1, v7

    aput-object v2, v1, v4

    move-object v2, v1

    goto/16 :goto_3

    :pswitch_1
    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    aget-object v8, v2, v8

    aput-object v8, v1, v7

    aput-object v8, v1, v4

    const/4 v4, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x1

    aget-object v2, v2, v8

    aput-object v2, v1, v7

    aput-object v2, v1, v4

    move-object v2, v1

    goto/16 :goto_3

    :pswitch_2
    const/4 v4, 0x0

    const/4 v7, 0x0

    aget-object v7, v2, v7

    aput-object v7, v1, v4

    const/4 v4, 0x2

    const/4 v7, 0x2

    aget-object v7, v2, v7

    aput-object v7, v1, v4

    const/4 v4, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x1

    aget-object v2, v2, v8

    aput-object v2, v1, v7

    aput-object v2, v1, v4

    move-object v2, v1

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p1, v5}, Lcom/upay/billing/UpayActivity;->setContentView(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public findView(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->views:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/upay/billing/engine/JsonUiImpl;->resultCode:I

    return v0
.end method

.method public verifyMethod()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/upay/billing/utils/Util;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.upay.billing.UpayActivity"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "myDestory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
