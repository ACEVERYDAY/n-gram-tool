.class public Lcom/apkol/utils/ui/AutoBgButton$a;
.super Landroid/graphics/drawable/LayerDrawable;
.source "AutoBgButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/utils/ui/AutoBgButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/graphics/ColorFilter;

.field protected b:I

.field final synthetic c:Lcom/apkol/utils/ui/AutoBgButton;


# direct methods
.method public constructor <init>(Lcom/apkol/utils/ui/AutoBgButton;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    iput-object p1, p0, Lcom/apkol/utils/ui/AutoBgButton$a;->c:Lcom/apkol/utils/ui/AutoBgButton;

    .line 44
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 39
    new-instance v0, Landroid/graphics/LightingColorFilter;

    .line 40
    invoke-static {p1}, Lcom/apkol/utils/ui/AutoBgButton;->a(Lcom/apkol/utils/ui/AutoBgButton;)I

    move-result v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/apkol/utils/ui/AutoBgButton$a;->a:Landroid/graphics/ColorFilter;

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/apkol/utils/ui/AutoBgButton$a;->b:I

    .line 45
    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    .line 52
    array-length v4, p1

    move v3, v0

    move v2, v0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/apkol/utils/ui/AutoBgButton$a;->mutate()Landroid/graphics/drawable/Drawable;

    .line 60
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/apkol/utils/ui/AutoBgButton$a;->a:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/AutoBgButton$a;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 69
    :goto_1
    invoke-virtual {p0}, Lcom/apkol/utils/ui/AutoBgButton$a;->invalidateSelf()V

    .line 71
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v0

    return v0

    .line 52
    :cond_0
    aget v5, p1, v3

    .line 53
    const v6, 0x101009e

    if-ne v5, v6, :cond_2

    move v2, v1

    .line 52
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_2
    const v6, 0x10100a7

    if-ne v5, v6, :cond_1

    move v0, v1

    .line 56
    goto :goto_2

    .line 62
    :cond_3
    if-nez v2, :cond_4

    .line 63
    invoke-virtual {p0, v7}, Lcom/apkol/utils/ui/AutoBgButton$a;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 64
    iget v0, p0, Lcom/apkol/utils/ui/AutoBgButton$a;->b:I

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/AutoBgButton$a;->setAlpha(I)V

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p0, v7}, Lcom/apkol/utils/ui/AutoBgButton$a;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method
