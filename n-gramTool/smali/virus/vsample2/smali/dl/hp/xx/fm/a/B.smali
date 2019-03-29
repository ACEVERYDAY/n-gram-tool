.class public Ldl/hp/xx/fm/a/B;
.super Ljava/lang/Object;
.source "h"


# static fields
.field public static final B:I = 0x2

.field private static g:Ljava/util/Map; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ldl/hp/xx/fm/a/J;",
            ">;"
        }
    .end annotation
.end field

.field public static final pDvqLhYe:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldl/hp/xx/fm/a/B;->g:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pDvqLhYe(I)Ldl/hp/xx/fm/a/J;
    .locals 3
    .param p0, "arg0"    # I

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 231
    packed-switch p0, :pswitch_data_0

    .line 255
    :goto_0
    return-object v0

    .line 243
    :pswitch_0
    sget-object v0, Ldl/hp/xx/fm/a/B;->g:Ljava/util/Map;

    .line 264
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 243
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Ldl/hp/xx/fm/a/B;->g:Ljava/util/Map;

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 194
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldl/hp/xx/fm/a/J;

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ldl/hp/xx/fm/a/l;

    invoke-direct {v0}, Ldl/hp/xx/fm/a/l;-><init>()V

    .line 155
    sget-object v1, Ldl/hp/xx/fm/a/B;->g:Ljava/util/Map;

    .line 222
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 155
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :pswitch_1
    sget-object v0, Ldl/hp/xx/fm/a/B;->g:Ljava/util/Map;

    .line 237
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 224
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    sget-object v0, Ldl/hp/xx/fm/a/B;->g:Ljava/util/Map;

    .line 173
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 235
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldl/hp/xx/fm/a/J;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ldl/hp/xx/fm/a/j;

    invoke-direct {v0}, Ldl/hp/xx/fm/a/j;-><init>()V

    .line 138
    sget-object v1, Ldl/hp/xx/fm/a/B;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
