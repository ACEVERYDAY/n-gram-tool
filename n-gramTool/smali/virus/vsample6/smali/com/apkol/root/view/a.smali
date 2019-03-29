.class public Lcom/apkol/root/view/a;
.super Landroid/widget/BaseAdapter;
.source "PinnedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/apkol/root/view/PinnedHeaderListView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/root/view/a$a;
    }
.end annotation


# instance fields
.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Landroid/view/LayoutInflater;

.field private j:Landroid/content/Context;

.field private k:Landroid/content/res/Resources;

.field private l:Landroid/app/Dialog;

.field private m:Ljava/lang/String;

.field private final n:I

.field private final o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/apkol/root/view/a;->h:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    .line 50
    const-string v0, "UninstallActivity"

    iput-object v0, p0, Lcom/apkol/root/view/a;->m:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/apkol/root/view/a;->n:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/view/a;->o:I

    .line 60
    iput-object p1, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/view/a;->i:Landroid/view/LayoutInflater;

    .line 63
    iput-object p2, p0, Lcom/apkol/root/view/a;->d:Ljava/util/ArrayList;

    .line 64
    iput-object p3, p0, Lcom/apkol/root/view/a;->e:Ljava/util/List;

    .line 65
    iput-object p4, p0, Lcom/apkol/root/view/a;->f:Ljava/util/List;

    .line 66
    iput-object p5, p0, Lcom/apkol/root/view/a;->g:Ljava/util/Map;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/view/a;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(ILandroid/view/View;Lcom/apkol/root/b/b;)V
    .locals 3

    .prologue
    .line 167
    const v0, 0x7f09005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 168
    const v1, 0x7f090060

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 169
    iget-object v2, p3, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const v1, 0x7f090061

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    iget-object v2, p3, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const v1, 0x7f090047

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 172
    check-cast v1, Landroid/widget/TextView;

    .line 174
    iget-object v2, p3, Lcom/apkol/root/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p3}, Lcom/apkol/root/b/b;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    const v0, 0x7f090065

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    new-instance v1, Lcom/apkol/root/view/a$a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p3}, Lcom/apkol/root/view/a$a;-><init>(Lcom/apkol/root/view/a;ILcom/apkol/root/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_0
    const v0, 0x7f09005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/apkol/root/view/a$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p3}, Lcom/apkol/root/view/a$a;-><init>(Lcom/apkol/root/view/a;ILcom/apkol/root/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 9

    .prologue
    const v8, 0x7f0500d7

    const v7, 0x7f0500d6

    const v6, 0x7f0500d5

    const v5, 0x7f0500d4

    const v4, 0x7f0500d3

    .line 295
    invoke-virtual {p0, p2}, Lcom/apkol/root/view/a;->getSectionForPosition(I)I

    move-result v0

    .line 296
    if-ltz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/apkol/root/view/a;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    .line 300
    const v1, 0x7f09005a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 299
    check-cast v1, Landroid/widget/TextView;

    .line 302
    const v2, 0x7f090059

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 301
    check-cast v2, Landroid/widget/LinearLayout;

    .line 305
    iget-object v3, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    iget-object v0, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    .line 307
    const v3, 0x7f02001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 306
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v0, p0, Lcom/apkol/root/view/a;->g:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v3, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    .line 314
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 314
    if-eqz v3, :cond_2

    .line 315
    iget-object v0, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    .line 316
    const v3, 0x7f02001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 315
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v0, p0, Lcom/apkol/root/view/a;->g:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 318
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object v3, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    .line 323
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 323
    if-eqz v3, :cond_3

    .line 324
    iget-object v0, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    .line 325
    const v3, 0x7f02001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 324
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v0, p0, Lcom/apkol/root/view/a;->g:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 327
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 333
    :cond_3
    iget-object v3, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 334
    iget-object v0, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    .line 335
    const v3, 0x7f020019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 334
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v0, p0, Lcom/apkol/root/view/a;->g:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 337
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 342
    :cond_4
    iget-object v3, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    .line 344
    const v3, 0x7f02001b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 343
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v0, p0, Lcom/apkol/root/view/a;->g:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 346
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apkol/root/view/a;->k:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/apkol/root/b/b;)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/b/b;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    .line 213
    iget-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 214
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 217
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget v1, p1, Lcom/apkol/root/b/b;->g:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 220
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/apkol/root/view/a;Lcom/apkol/root/b/b;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/apkol/root/view/a;->a(Lcom/apkol/root/b/b;)V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 427
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/p;->a(Landroid/content/Context;)Lcom/apkol/utils/p;

    move-result-object v0

    const-string v1, "delcheck"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apkol/utils/p;->b(Ljava/lang/String;Z)Z

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/p;->a(Landroid/content/Context;)Lcom/apkol/utils/p;

    move-result-object v0

    const-string v1, "delcheck"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/apkol/utils/p;->b(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method private b(Lcom/apkol/root/b/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 227
    iget-object v0, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/p;->a(Landroid/content/Context;)Lcom/apkol/utils/p;

    move-result-object v0

    .line 228
    const-string v1, "delcheck"

    .line 227
    invoke-virtual {v0, v1, v3}, Lcom/apkol/utils/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 229
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 230
    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    .line 232
    iget-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    .line 233
    const v2, 0x7f090044

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 232
    check-cast v0, Landroid/widget/Button;

    .line 234
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    const v2, 0x7f090045

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 237
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/apkol/root/view/a;->m:Ljava/lang/String;

    const-string v2, "\u70b9\u51fb\u5220\u9664\u5f39\u7a97"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v0, p1, v3}, Lcom/apkol/root/v;->a(Landroid/content/Context;Lcom/apkol/utils/a/a;I)V

    .line 250
    :goto_0
    const-string v0, "uninstallsoft"

    .line 251
    iget-object v2, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 252
    return-void

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lcom/apkol/root/view/a;->c(Lcom/apkol/root/b/b;)V

    .line 245
    iget-object v0, p0, Lcom/apkol/root/view/a;->m:Ljava/lang/String;

    const-string v2, "\u70b9\u51fb\u76f4\u63a5\u5220\u9664"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    .line 248
    const/4 v2, 0x2

    .line 247
    invoke-static {v0, p1, v2}, Lcom/apkol/root/v;->a(Landroid/content/Context;Lcom/apkol/utils/a/a;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/apkol/root/view/a;Lcom/apkol/root/b/b;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/apkol/root/view/a;->b(Lcom/apkol/root/b/b;)V

    return-void
.end method

.method private c(Lcom/apkol/root/b/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    const v1, 0x7f0500e3

    invoke-static {v0, v1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    .line 438
    iget-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 439
    iget-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 440
    iget-object v0, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->a(Landroid/content/Context;)Lcom/apkol/root/feature/ag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apkol/root/feature/ag;->a(Lcom/apkol/root/b/b;)V

    .line 441
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 271
    .line 272
    if-ltz p1, :cond_0

    .line 273
    iget v0, p0, Lcom/apkol/root/view/a;->h:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/apkol/root/view/a;->h:I

    if-ne v0, p1, :cond_1

    .line 274
    :cond_0
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    .line 276
    :cond_1
    iput v1, p0, Lcom/apkol/root/view/a;->h:I

    .line 277
    invoke-virtual {p0, p1}, Lcom/apkol/root/view/a;->getSectionForPosition(I)I

    move-result v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apkol/root/view/a;->getPositionForSection(I)I

    move-result v0

    .line 279
    if-eq v0, v1, :cond_2

    .line 280
    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 281
    const/4 v0, 0x2

    goto :goto_0

    .line 283
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/view/a;->l:Landroid/app/Dialog;

    .line 448
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 289
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/apkol/root/view/a;->a(Landroid/view/View;I)V

    .line 291
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/apkol/root/view/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/apkol/root/view/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 362
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/apkol/root/view/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 363
    :cond_0
    const/4 v0, -0x1

    .line 365
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/apkol/root/view/a;->f:Ljava/util/List;

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
    .line 371
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/apkol/root/view/a;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 372
    :cond_0
    const/4 v0, -0x1

    .line 375
    :cond_1
    :goto_0
    return v0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/view/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 375
    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/apkol/root/view/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    .line 90
    iget-object v0, p0, Lcom/apkol/root/view/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/apkol/root/view/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/b/b;

    .line 92
    if-nez p2, :cond_0

    .line 93
    iget-object v1, p0, Lcom/apkol/root/view/a;->i:Landroid/view/LayoutInflater;

    const v2, 0x7f030016

    .line 94
    const/4 v3, 0x0

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 98
    :cond_0
    const v1, 0x7f090065

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 97
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 99
    iget v2, v0, Lcom/apkol/root/b/b;->g:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 100
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    :goto_0
    invoke-virtual {p0, p1}, Lcom/apkol/root/view/a;->getSectionForPosition(I)I

    move-result v3

    .line 107
    const v1, 0x7f090058

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 106
    check-cast v1, Landroid/widget/LinearLayout;

    .line 110
    const v2, 0x7f090062

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 109
    check-cast v2, Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {p0, v3}, Lcom/apkol/root/view/a;->getPositionForSection(I)I

    move-result v3

    if-ne v3, p1, :cond_5

    .line 112
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    invoke-direct {p0, p2, p1}, Lcom/apkol/root/view/a;->a(Landroid/view/View;I)V

    .line 121
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 120
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    iget-object v3, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 123
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    add-int/lit8 v3, p1, 0x1

    .line 127
    invoke-virtual {p0, v3}, Lcom/apkol/root/view/a;->getSectionForPosition(I)I

    move-result v4

    .line 128
    invoke-virtual {p0, v4}, Lcom/apkol/root/view/a;->getPositionForSection(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 129
    iget-object v3, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 130
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/apkol/root/view/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 155
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 154
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    iget-object v3, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 157
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/apkol/root/view/a;->a(ILandroid/view/View;Lcom/apkol/root/b/b;)V

    .line 161
    :cond_3
    return-object p2

    .line 102
    :cond_4
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_5
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    add-int/lit8 v1, p1, 0x1

    .line 140
    invoke-virtual {p0, v1}, Lcom/apkol/root/view/a;->getSectionForPosition(I)I

    move-result v3

    .line 141
    invoke-virtual {p0, v3}, Lcom/apkol/root/view/a;->getPositionForSection(I)I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 143
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 142
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    iget-object v3, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 145
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 148
    :cond_6
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 147
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 149
    iget-object v3, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 150
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 381
    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 423
    :goto_0
    :pswitch_0
    return-void

    .line 386
    :pswitch_1
    invoke-virtual {p0}, Lcom/apkol/root/view/a;->a()V

    goto :goto_0

    .line 389
    :pswitch_2
    invoke-virtual {p0}, Lcom/apkol/root/view/a;->a()V

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/b/b;

    invoke-direct {p0, v0}, Lcom/apkol/root/view/a;->c(Lcom/apkol/root/b/b;)V

    .line 392
    iget-object v1, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/b/b;

    .line 392
    invoke-static {v1, v0, v3}, Lcom/apkol/root/v;->a(Landroid/content/Context;Lcom/apkol/utils/a/a;I)V

    goto :goto_0

    .line 397
    :pswitch_3
    invoke-virtual {p0}, Lcom/apkol/root/view/a;->a()V

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 400
    iget-object v1, p0, Lcom/apkol/root/view/a;->m:Ljava/lang/String;

    const-string v2, "\u5220\u9664(\u5f39\u7a97)\u53d6\u6d88"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v1, "uninstallsoft"

    .line 402
    iget-object v2, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 404
    iget-object v1, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/b/b;

    invoke-static {v1, v0}, Lcom/apkol/root/v;->a(Landroid/content/Context;Lcom/apkol/utils/a/a;)V

    goto :goto_0

    .line 407
    :pswitch_4
    invoke-direct {p0}, Lcom/apkol/root/view/a;->b()V

    .line 408
    invoke-virtual {p0}, Lcom/apkol/root/view/a;->a()V

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/b/b;

    invoke-direct {p0, v0}, Lcom/apkol/root/view/a;->c(Lcom/apkol/root/b/b;)V

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 412
    iget-object v1, p0, Lcom/apkol/root/view/a;->m:Ljava/lang/String;

    const-string v2, "\u5220\u9664(\u5f39\u7a97)\u786e\u5b9a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v1, "uninstallsoft"

    .line 414
    iget-object v2, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 416
    iget-object v1, p0, Lcom/apkol/root/view/a;->j:Landroid/content/Context;

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/b/b;

    .line 416
    invoke-static {v1, v0, v3}, Lcom/apkol/root/v;->a(Landroid/content/Context;Lcom/apkol/utils/a/a;I)V

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x7f090044
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 264
    instance-of v0, p1, Lcom/apkol/root/view/PinnedHeaderListView;

    if-eqz v0, :cond_0

    .line 265
    check-cast p1, Lcom/apkol/root/view/PinnedHeaderListView;

    invoke-virtual {p1, p2}, Lcom/apkol/root/view/PinnedHeaderListView;->a(I)V

    .line 267
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method
