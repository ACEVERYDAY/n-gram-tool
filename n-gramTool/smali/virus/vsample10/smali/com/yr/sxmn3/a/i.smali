.class public Lcom/yr/sxmn3/a/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(IF)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static a(I[F)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static a(FIIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 8

    const/4 v7, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-nez p4, :cond_0

    add-int/lit8 v0, p3, -0x1

    if-ne p4, v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput p0, v0, v5

    aput p0, v0, v6

    aput p0, v0, v3

    aput p0, v0, v7

    const/4 v1, 0x4

    aput p0, v0, v1

    const/4 v1, 0x5

    aput p0, v0, v1

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    invoke-static {p1, v0}, Lcom/yr/sxmn3/a/i;->a(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput p0, v0, v5

    aput p0, v0, v6

    aput p0, v0, v3

    aput p0, v0, v7

    const/4 v3, 0x4

    aput p0, v0, v3

    const/4 v3, 0x5

    aput p0, v0, v3

    const/4 v3, 0x6

    aput p0, v0, v3

    const/4 v3, 0x7

    aput p0, v0, v3

    invoke-static {p2, v0}, Lcom/yr/sxmn3/a/i;->a(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    new-array v3, v6, [I

    const v4, -0x10100a7

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v6, [I

    const v3, 0x10100a7

    aput v3, v1, v5

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v2

    :cond_0
    if-nez p4, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput p0, v0, v5

    aput p0, v0, v6

    aput p0, v0, v3

    aput p0, v0, v7

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    invoke-static {p1, v0}, Lcom/yr/sxmn3/a/i;->a(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput p0, v0, v5

    aput p0, v0, v6

    aput p0, v0, v3

    aput p0, v0, v7

    const/4 v3, 0x4

    aput v4, v0, v3

    const/4 v3, 0x5

    aput v4, v0, v3

    const/4 v3, 0x6

    aput v4, v0, v3

    const/4 v3, 0x7

    aput v4, v0, v3

    invoke-static {p2, v0}, Lcom/yr/sxmn3/a/i;->a(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, -0x1

    if-ne p4, v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v4, v0, v5

    aput v4, v0, v6

    aput v4, v0, v3

    aput v4, v0, v7

    const/4 v1, 0x4

    aput p0, v0, v1

    const/4 v1, 0x5

    aput p0, v0, v1

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    invoke-static {p1, v0}, Lcom/yr/sxmn3/a/i;->a(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v4, v0, v5

    aput v4, v0, v6

    aput v4, v0, v3

    aput v4, v0, v7

    const/4 v3, 0x4

    aput p0, v0, v3

    const/4 v3, 0x5

    aput p0, v0, v3

    const/4 v3, 0x6

    aput p0, v0, v3

    const/4 v3, 0x7

    aput p0, v0, v3

    invoke-static {p2, v0}, Lcom/yr/sxmn3/a/i;->a(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto/16 :goto_0
.end method

.method public static a(FIIZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-nez p3, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    new-array v3, v6, [I

    const v4, -0x10100a7

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v6, [I

    const v3, 0x10100a7

    aput v3, v1, v5

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v2

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v3, v0, v5

    aput v3, v0, v6

    aput v3, v0, v4

    aput v3, v0, v7

    const/4 v1, 0x4

    aput p0, v0, v1

    const/4 v1, 0x5

    aput p0, v0, v1

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    invoke-static {p1, v0}, Lcom/yr/sxmn3/a/i;->a(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v3, v0, v5

    aput v3, v0, v6

    aput v3, v0, v4

    aput v3, v0, v7

    const/4 v3, 0x4

    aput p0, v0, v3

    const/4 v3, 0x5

    aput p0, v0, v3

    const/4 v3, 0x6

    aput p0, v0, v3

    const/4 v3, 0x7

    aput p0, v0, v3

    invoke-static {p2, v0}, Lcom/yr/sxmn3/a/i;->a(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
