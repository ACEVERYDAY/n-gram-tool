.class public Lcom/apkol/utils/ui/AutoBgButton;
.super Landroid/widget/Button;
.source "AutoBgButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/utils/ui/AutoBgButton$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    sget-object v0, Lcom/apkol/a/a$i;->bgbutton:[I

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    const/4 v1, 0x0

    const v2, 0x96989b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/apkol/utils/ui/AutoBgButton;->a:I

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/apkol/utils/ui/AutoBgButton;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/apkol/utils/ui/AutoBgButton;->a:I

    return v0
.end method


# virtual methods
.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/apkol/utils/ui/AutoBgButton$a;

    invoke-direct {v0, p0, p1}, Lcom/apkol/utils/ui/AutoBgButton$a;-><init>(Lcom/apkol/utils/ui/AutoBgButton;Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-super {p0, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method
