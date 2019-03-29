.class Lcom/apkol/root/feature/ab;
.super Ljava/lang/Object;
.source "UninsDataAss.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/apkol/root/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/x;

.field private final synthetic b:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/x;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/ab;->a:Lcom/apkol/root/feature/x;

    iput-object p2, p0, Lcom/apkol/root/feature/ab;->b:Ljava/util/Comparator;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apkol/root/b/b;Lcom/apkol/root/b/b;)I
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    iget-object v0, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p2, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v2, v3

    .line 474
    :cond_1
    :goto_0
    return v2

    .line 435
    :cond_2
    iget-object v0, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    iget-object v4, p2, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 445
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 447
    const-string v4, "[\\u4e00-\\u9fa5]+"

    .line 446
    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 447
    if-eqz v0, :cond_8

    move v0, v1

    .line 452
    :goto_1
    iget-object v4, p2, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 451
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 453
    const-string v5, "[\\u4e00-\\u9fa5]+"

    .line 452
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    .line 453
    if-eqz v4, :cond_3

    move v2, v1

    .line 458
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 459
    iget-object v0, p0, Lcom/apkol/root/feature/ab;->b:Ljava/util/Comparator;

    .line 460
    iget-object v1, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    :cond_4
    :goto_2
    move v2, v1

    .line 474
    goto :goto_0

    .line 461
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v2, :cond_4

    .line 463
    :cond_6
    if-nez v0, :cond_7

    if-eqz v2, :cond_7

    move v1, v3

    .line 465
    goto :goto_2

    .line 466
    :cond_7
    iget-object v0, p0, Lcom/apkol/root/feature/ab;->b:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/apkol/root/b/b;

    check-cast p2, Lcom/apkol/root/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/apkol/root/feature/ab;->a(Lcom/apkol/root/b/b;Lcom/apkol/root/b/b;)I

    move-result v0

    return v0
.end method
