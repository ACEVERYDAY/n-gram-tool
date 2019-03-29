.class public Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;
.super Landroid/widget/BaseAdapter;
.source "BasePinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/apkol/utils/ui/BasePinnedHeaderListView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/utils/ui/BasePinnedHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apkol/utils/ui/BasePinnedHeaderListView;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/LayoutInflater;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcom/apkol/utils/ui/BasePinnedHeaderListView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->a:Lcom/apkol/utils/ui/BasePinnedHeaderListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->e:I

    .line 212
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->i:Landroid/view/LayoutInflater;

    .line 213
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p0, p2}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->getSectionForPosition(I)I

    move-result v0

    .line 332
    if-ltz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    .line 334
    iget-object v1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->a:Lcom/apkol/utils/ui/BasePinnedHeaderListView;

    invoke-static {v1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->a(Lcom/apkol/utils/ui/BasePinnedHeaderListView;)Lcom/apkol/utils/ui/b;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/apkol/utils/ui/b;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 336
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 343
    invoke-virtual {p0, p2}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->getSectionForPosition(I)I

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->a:Lcom/apkol/utils/ui/BasePinnedHeaderListView;

    invoke-static {v1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->a(Lcom/apkol/utils/ui/BasePinnedHeaderListView;)Lcom/apkol/utils/ui/b;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->g:Ljava/util/List;

    invoke-virtual {v1, p1, v2, v0, p2}, Lcom/apkol/utils/ui/b;->a(Landroid/view/View;Ljava/util/List;II)V

    .line 346
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 305
    .line 306
    if-ltz p1, :cond_0

    .line 307
    iget v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->e:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->e:I

    if-ne v0, p1, :cond_1

    .line 308
    :cond_0
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    .line 310
    :cond_1
    iput v1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->e:I

    .line 311
    invoke-virtual {p0, p1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->getSectionForPosition(I)I

    move-result v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->getPositionForSection(I)I

    move-result v0

    .line 313
    if-eq v0, v1, :cond_2

    .line 314
    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 315
    const/4 v0, 0x2

    goto :goto_0

    .line 317
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->j:I

    .line 233
    iput p2, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->k:I

    .line 234
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1, p2}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->a(Landroid/view/View;I)V

    .line 324
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    iput-object p1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->f:Ljava/util/List;

    .line 227
    iput-object p2, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->g:Ljava/util/List;

    .line 228
    iput-object p3, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->h:Ljava/util/List;

    .line 229
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 258
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 356
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 357
    :cond_0
    const/4 v0, -0x1

    .line 359
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2

    .prologue
    .line 365
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 366
    :cond_0
    const/4 v0, -0x1

    .line 369
    :cond_1
    :goto_0
    return v0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 369
    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 264
    if-nez p2, :cond_0

    .line 265
    iget v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->i:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 270
    :cond_0
    invoke-virtual {p0, p1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->getSectionForPosition(I)I

    move-result v1

    .line 272
    iget v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->k:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 271
    check-cast v0, Landroid/widget/LinearLayout;

    .line 273
    invoke-virtual {p0, v1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    invoke-direct {p0, p2, p1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->b(Landroid/view/View;I)V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->a:Lcom/apkol/utils/ui/BasePinnedHeaderListView;

    invoke-static {v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->a(Lcom/apkol/utils/ui/BasePinnedHeaderListView;)Lcom/apkol/utils/ui/b;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->f:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/apkol/utils/ui/b;->a(Ljava/util/List;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 284
    return-object v0

    .line 277
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    invoke-direct {p0, p2, p1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->b(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->a:Lcom/apkol/utils/ui/BasePinnedHeaderListView;

    invoke-static {v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->a(Lcom/apkol/utils/ui/BasePinnedHeaderListView;)Lcom/apkol/utils/ui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->f:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/apkol/utils/ui/b;->a(Ljava/util/List;I)Z

    move-result v0

    .line 246
    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 297
    instance-of v0, p1, Lcom/apkol/utils/ui/BasePinnedHeaderListView;

    if-eqz v0, :cond_0

    .line 298
    check-cast p1, Lcom/apkol/utils/ui/BasePinnedHeaderListView;

    .line 299
    invoke-virtual {p1, p2}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c(I)V

    .line 301
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method
