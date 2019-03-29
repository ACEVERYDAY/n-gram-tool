.class Lcom/apkol/root/b/k$a;
.super Ljava/lang/Object;
.source "UtilAss.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/root/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/apkol/utils/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/b/k$a;->a:Ljava/util/Comparator;

    .line 635
    return-void
.end method


# virtual methods
.method public a(Lcom/apkol/utils/a/a;Lcom/apkol/utils/a/a;)I
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 640
    invoke-virtual {p1}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    invoke-virtual {p2}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    :cond_0
    invoke-static {}, Lcom/apkol/root/b/k;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "---compare---- = null"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 679
    :cond_1
    :goto_0
    return v2

    .line 646
    :cond_2
    invoke-virtual {p1}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    invoke-virtual {p1}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 656
    const-string v4, "[\\u4e00-\\u9fa5]+"

    .line 655
    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 656
    if-eqz v0, :cond_8

    move v0, v1

    .line 661
    :goto_1
    invoke-virtual {p2}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 660
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 662
    const-string v5, "[\\u4e00-\\u9fa5]+"

    .line 661
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    .line 662
    if-eqz v4, :cond_3

    move v2, v1

    .line 669
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 670
    iget-object v0, p0, Lcom/apkol/root/b/k$a;->a:Ljava/util/Comparator;

    .line 671
    invoke-virtual {p1}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    :cond_4
    :goto_2
    move v2, v1

    .line 679
    goto :goto_0

    .line 672
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v2, :cond_4

    .line 674
    :cond_6
    if-nez v0, :cond_7

    if-eqz v2, :cond_7

    move v1, v3

    .line 676
    goto :goto_2

    .line 677
    :cond_7
    iget-object v0, p0, Lcom/apkol/root/b/k$a;->a:Ljava/util/Comparator;

    invoke-virtual {p1}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v2

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
    check-cast p1, Lcom/apkol/utils/a/a;

    check-cast p2, Lcom/apkol/utils/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/apkol/root/b/k$a;->a(Lcom/apkol/utils/a/a;Lcom/apkol/utils/a/a;)I

    move-result v0

    return v0
.end method
