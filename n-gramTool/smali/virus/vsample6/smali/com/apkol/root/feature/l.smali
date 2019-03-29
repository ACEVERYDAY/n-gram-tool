.class public Lcom/apkol/root/feature/l;
.super Ljava/lang/Object;
.source "SoftRecommend.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/apkol/utils/f/a;
.implements Lcom/apkol/utils/h/a;
.implements Lcom/apkol/utils/i/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/root/feature/l$a;,
        Lcom/apkol/root/feature/l$b;
    }
.end annotation


# instance fields
.field private A:Lcom/apkol/utils/f/c;

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private H:Lcom/apkol/utils/e/e;

.field private I:Z

.field private J:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/res/Resources;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:F

.field private k:F

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/apkol/utils/i/b;

.field private p:Landroid/support/v4/view/ViewPager;

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/feature/l$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:[I

.field private s:[I

.field private t:[I

.field private u:[I

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/apkol/root/feature/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/apkol/utils/c;

.field private y:Ljava/lang/String;

.field private z:Lcom/apkol/utils/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v0, Lcom/apkol/root/feature/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/l;->a:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/apkol/root/feature/l;->q:Ljava/util/Map;

    .line 92
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 93
    iput-object v0, p0, Lcom/apkol/root/feature/l;->r:[I

    .line 94
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    .line 95
    iput-object v0, p0, Lcom/apkol/root/feature/l;->s:[I

    .line 96
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    .line 97
    iput-object v0, p0, Lcom/apkol/root/feature/l;->t:[I

    .line 98
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    .line 99
    iput-object v0, p0, Lcom/apkol/root/feature/l;->u:[I

    .line 101
    iput-object v1, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/feature/l;->w:Ljava/util/Map;

    .line 104
    iput-object v1, p0, Lcom/apkol/root/feature/l;->y:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/apkol/root/feature/l;->z:Lcom/apkol/utils/i;

    .line 107
    iput-object v1, p0, Lcom/apkol/root/feature/l;->A:Lcom/apkol/utils/f/c;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/apkol/root/feature/l;->B:I

    .line 110
    iput v3, p0, Lcom/apkol/root/feature/l;->C:I

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/feature/l;->D:I

    .line 112
    const/4 v0, 0x3

    iput v0, p0, Lcom/apkol/root/feature/l;->E:I

    .line 113
    iput v2, p0, Lcom/apkol/root/feature/l;->F:I

    .line 114
    const/4 v0, 0x5

    iput v0, p0, Lcom/apkol/root/feature/l;->G:I

    .line 116
    iput-object v1, p0, Lcom/apkol/root/feature/l;->H:Lcom/apkol/utils/e/e;

    .line 119
    iput-boolean v3, p0, Lcom/apkol/root/feature/l;->I:Z

    .line 122
    new-instance v0, Lcom/apkol/root/feature/m;

    invoke-direct {v0, p0}, Lcom/apkol/root/feature/m;-><init>(Lcom/apkol/root/feature/l;)V

    iput-object v0, p0, Lcom/apkol/root/feature/l;->J:Landroid/os/Handler;

    .line 186
    invoke-direct {p0, p1}, Lcom/apkol/root/feature/l;->a(Landroid/content/Context;)V

    .line 187
    invoke-direct {p0}, Lcom/apkol/root/feature/l;->b()V

    .line 188
    return-void

    .line 92
    nop

    :array_0
    .array-data 4
        0x7f09006a
        0x7f09006e
        0x7f090072
        0x7f090076
    .end array-data

    .line 94
    :array_1
    .array-data 4
        0x7f09006b
        0x7f09006f
        0x7f090073
        0x7f090077
    .end array-data

    .line 96
    :array_2
    .array-data 4
        0x7f09006c
        0x7f090070
        0x7f090074
        0x7f090078
    .end array-data

    .line 98
    :array_3
    .array-data 4
        0x7f09006d
        0x7f090071
        0x7f090075
        0x7f090079
    .end array-data
.end method

.method private a(FF)V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/apkol/root/feature/l;->i:Landroid/widget/RelativeLayout;

    .line 399
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 398
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 400
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 401
    iget-object v1, p0, Lcom/apkol/root/feature/l;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object v0, p0, Lcom/apkol/root/feature/l;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 403
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 404
    iget-object v1, p0, Lcom/apkol/root/feature/l;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v0, p0, Lcom/apkol/root/feature/l;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->postInvalidate()V

    .line 406
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/apkol/root/feature/l;->q:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/apkol/root/feature/l;->q:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 473
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/apkol/root/feature/l;->r:[I

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 474
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 479
    :cond_0
    return-void

    .line 475
    :cond_1
    invoke-virtual {p0, p2, v0, v1}, Lcom/apkol/root/feature/l;->a(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 192
    iput-object p1, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    move-object v0, p1

    .line 193
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/apkol/root/feature/l;->b:Landroid/app/Activity;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/l;->d:Landroid/content/res/Resources;

    .line 195
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/l;->z:Lcom/apkol/utils/i;

    .line 197
    invoke-static {}, Lcom/apkol/utils/e/a;->a()Lcom/apkol/utils/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/l;->A:Lcom/apkol/utils/f/c;

    .line 198
    iget-object v0, p0, Lcom/apkol/root/feature/l;->A:Lcom/apkol/utils/f/c;

    invoke-virtual {v0, p0}, Lcom/apkol/utils/f/c;->a(Lcom/apkol/utils/f/a;)V

    .line 200
    invoke-static {}, Lcom/apkol/utils/e/e;->a()Lcom/apkol/utils/e/e;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/l;->H:Lcom/apkol/utils/e/e;

    .line 202
    iget-object v0, p0, Lcom/apkol/root/feature/l;->d:Landroid/content/res/Resources;

    .line 203
    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/apkol/root/feature/l;->j:F

    .line 204
    iget-object v0, p0, Lcom/apkol/root/feature/l;->d:Landroid/content/res/Resources;

    .line 205
    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/apkol/root/feature/l;->k:F

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/feature/l;->n:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Lcom/apkol/utils/c;

    iget-object v1, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/apkol/utils/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apkol/root/feature/l;->x:Lcom/apkol/utils/c;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/feature/l;->q:Ljava/util/Map;

    .line 214
    iget-object v0, p0, Lcom/apkol/root/feature/l;->z:Lcom/apkol/utils/i;

    invoke-virtual {v0}, Lcom/apkol/utils/i;->b()Z

    move-result v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apkol/root/feature/l;->z:Lcom/apkol/utils/i;

    invoke-virtual {v1}, Lcom/apkol/utils/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apkol/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/l;->y:Ljava/lang/String;

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apkol/root/feature/l;->z:Lcom/apkol/utils/i;

    iget-object v2, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/apkol/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/l;->y:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 805
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 807
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 808
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 810
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 812
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 814
    iget-object v0, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    const v1, 0x7f0500ff

    invoke-static {v0, v1}, Lcom/apkol/utils/v;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private a(Lcom/apkol/root/feature/l$b;)V
    .locals 2

    .prologue
    .line 822
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/feature/s;

    invoke-direct {v1, p0, p1}, Lcom/apkol/root/feature/s;-><init>(Lcom/apkol/root/feature/l;Lcom/apkol/root/feature/l$b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 849
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 850
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/feature/l;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/apkol/root/feature/l;->d()V

    return-void
.end method

.method static synthetic a(Lcom/apkol/root/feature/l;I)V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/apkol/root/feature/l;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/apkol/root/feature/l;Lcom/apkol/root/feature/l$b;)V
    .locals 0

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/apkol/root/feature/l;->a(Lcom/apkol/root/feature/l$b;)V

    return-void
.end method

.method static synthetic a(Lcom/apkol/root/feature/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/apkol/root/feature/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 281
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 282
    const-string v1, "IsSuccess"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "IsSuccess"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 284
    if-eqz v1, :cond_0

    .line 285
    const-string v1, "ApkApplicationList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "ApkApplicationList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 289
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 290
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 320
    invoke-virtual {p0, v5}, Lcom/apkol/root/feature/l;->a(Ljava/util/List;)V

    .line 323
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    .line 322
    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v6, v0

    move v4, v2

    move v0, v2

    .line 325
    :goto_1
    if-lt v4, v6, :cond_4

    .line 337
    iget-object v0, p0, Lcom/apkol/root/feature/l;->J:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 345
    :cond_0
    :goto_2
    return-void

    .line 292
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 291
    check-cast v0, Lorg/json/JSONObject;

    .line 293
    new-instance v4, Lcom/apkol/root/feature/l$a;

    invoke-direct {v4, p0}, Lcom/apkol/root/feature/l$a;-><init>(Lcom/apkol/root/feature/l;)V

    .line 294
    const-string v6, "AppName"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/apkol/root/feature/l$a;->c:Ljava/lang/String;

    .line 295
    const-string v6, "ImageUrl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/apkol/root/feature/l$a;->d:Ljava/lang/String;

    .line 297
    const-string v6, "DowloadUrl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 296
    iput-object v6, v4, Lcom/apkol/root/feature/l$a;->a:Ljava/lang/String;

    .line 299
    const-string v6, "ApkPackgeName"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 298
    iput-object v6, v4, Lcom/apkol/root/feature/l$a;->g:Ljava/lang/String;

    .line 301
    const-string v6, "ApkServiceName"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 300
    iput-object v6, v4, Lcom/apkol/root/feature/l$a;->f:Ljava/lang/String;

    .line 302
    const-string v6, "Md5"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/apkol/root/feature/l$a;->e:Ljava/lang/String;

    .line 303
    const-string v6, "SortValue"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/apkol/root/feature/l$a;->h:I

    .line 305
    iget-object v0, v4, Lcom/apkol/root/feature/l$a;->e:Ljava/lang/String;

    iput-object v0, v4, Lcom/apkol/root/feature/l$a;->b:Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/apkol/root/feature/l;->y:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/apkol/root/feature/l$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 308
    invoke-static {v0}, Lcom/apkol/utils/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v6, v4, Lcom/apkol/root/feature/l$a;->e:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/apkol/root/feature/l$a;->i:Z

    .line 317
    :goto_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 312
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/apkol/root/feature/l$a;->i:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 341
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 315
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v4, Lcom/apkol/root/feature/l$a;->i:Z

    goto :goto_3

    .line 326
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v0

    .line 327
    :goto_4
    if-lt v1, v8, :cond_6

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/apkol/root/feature/l;->q:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v3

    goto/16 :goto_1

    .line 328
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 329
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/l$a;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    add-int/lit8 v3, v3, 0x1

    .line 327
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method private a(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 749
    iget-object v1, p0, Lcom/apkol/root/feature/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP_LENGTH ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 751
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v2

    .line 753
    invoke-virtual {v2}, Lcom/apkol/utils/i;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 754
    invoke-virtual {v2}, Lcom/apkol/utils/i;->d()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 755
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/apkol/utils/i;->d()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-ltz v1, :cond_2

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/apkol/root/feature/l;->b:Landroid/app/Activity;

    new-instance v2, Lcom/apkol/root/feature/q;

    invoke-direct {v2, p0}, Lcom/apkol/root/feature/q;-><init>(Lcom/apkol/root/feature/l;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 780
    :goto_0
    return v0

    .line 767
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 768
    iget-object v1, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/apkol/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 767
    invoke-virtual {v2, v1}, Lcom/apkol/utils/i;->b(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-ltz v1, :cond_2

    .line 769
    iget-object v1, p0, Lcom/apkol/root/feature/l;->b:Landroid/app/Activity;

    new-instance v2, Lcom/apkol/root/feature/r;

    invoke-direct {v2, p0}, Lcom/apkol/root/feature/r;-><init>(Lcom/apkol/root/feature/l;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 780
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 789
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 790
    const/4 v2, 0x0

    .line 789
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 795
    :goto_0
    if-nez v1, :cond_0

    .line 799
    :goto_1
    return v0

    .line 791
    :catch_0
    move-exception v1

    .line 792
    const/4 v2, 0x0

    .line 793
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    .line 799
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/apkol/root/feature/l;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 786
    invoke-direct {p0, p1, p2}, Lcom/apkol/root/feature/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/apkol/root/feature/l;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/apkol/root/feature/l;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/apkol/root/feature/l;->b:Landroid/app/Activity;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/apkol/root/feature/l;->h:Landroid/widget/LinearLayout;

    .line 224
    iget-object v0, p0, Lcom/apkol/root/feature/l;->b:Landroid/app/Activity;

    .line 225
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 224
    iput-object v0, p0, Lcom/apkol/root/feature/l;->i:Landroid/widget/RelativeLayout;

    .line 227
    iget-object v0, p0, Lcom/apkol/root/feature/l;->b:Landroid/app/Activity;

    .line 228
    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 227
    iput-object v0, p0, Lcom/apkol/root/feature/l;->l:Landroid/widget/LinearLayout;

    .line 230
    iget-object v0, p0, Lcom/apkol/root/feature/l;->b:Landroid/app/Activity;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/apkol/root/feature/l;->e:Landroid/widget/Button;

    .line 231
    iget-object v0, p0, Lcom/apkol/root/feature/l;->b:Landroid/app/Activity;

    .line 232
    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 231
    iput-object v0, p0, Lcom/apkol/root/feature/l;->f:Landroid/widget/LinearLayout;

    .line 234
    return-void
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 409
    new-instance v0, Lcom/apkol/utils/i/b;

    iget-object v1, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1}, Lcom/apkol/utils/i/b;-><init>(Landroid/content/Context;Lcom/apkol/utils/i/a;I)V

    iput-object v0, p0, Lcom/apkol/root/feature/l;->o:Lcom/apkol/utils/i/b;

    .line 410
    iget-object v0, p0, Lcom/apkol/root/feature/l;->p:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/apkol/root/feature/o;

    invoke-direct {v1, p0}, Lcom/apkol/root/feature/o;-><init>(Lcom/apkol/root/feature/l;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 428
    iget-object v0, p0, Lcom/apkol/root/feature/l;->p:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/apkol/root/feature/l;->o:Lcom/apkol/utils/i/b;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/s;)V

    .line 429
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 601
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 602
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 603
    new-instance v1, Lcom/apkol/utils/h/b;

    invoke-direct {v1, p0, v0}, Lcom/apkol/utils/h/b;-><init>(Lcom/apkol/utils/h/a;Landroid/os/Message;)V

    invoke-static {v1, p1}, Lcom/apkol/utils/y;->a(Lcom/apkol/utils/h/b;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method static synthetic c(Lcom/apkol/root/feature/l;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/feature/n;

    invoke-direct {v1, p0}, Lcom/apkol/root/feature/n;-><init>(Lcom/apkol/root/feature/l;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 276
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 277
    return-void
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/apkol/root/feature/l;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apkol/root/feature/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 433
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/apkol/root/feature/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 443
    :cond_0
    return-void

    .line 434
    :cond_1
    if-ne v1, p1, :cond_2

    .line 435
    iget-object v0, p0, Lcom/apkol/root/feature/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 436
    iget-object v2, p0, Lcom/apkol/root/feature/l;->d:Landroid/content/res/Resources;

    const v3, 0x7f060038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 435
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 433
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/feature/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 439
    iget-object v2, p0, Lcom/apkol/root/feature/l;->d:Landroid/content/res/Resources;

    const v3, 0x7f060039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 438
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/apkol/root/feature/l;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    const v5, 0x7f06001a

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/apkol/root/feature/l;->e:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/apkol/root/feature/l;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/apkol/root/feature/l;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 370
    iget v0, p0, Lcom/apkol/root/feature/l;->j:F

    iget v2, p0, Lcom/apkol/root/feature/l;->k:F

    invoke-direct {p0, v0, v2}, Lcom/apkol/root/feature/l;->a(FF)V

    .line 372
    iget-object v0, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    .line 373
    const v2, 0x7f03001b

    .line 372
    invoke-static {v0, v2}, Lcom/apkol/utils/w;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    .line 374
    iget-object v0, p0, Lcom/apkol/root/feature/l;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 375
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 376
    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 375
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object v0, p0, Lcom/apkol/root/feature/l;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/apkol/root/feature/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 380
    const v0, 0x7f09007a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/apkol/root/feature/l;->m:Landroid/widget/LinearLayout;

    .line 382
    iget-object v0, p0, Lcom/apkol/root/feature/l;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    move v0, v1

    .line 383
    :goto_0
    iget-object v3, p0, Lcom/apkol/root/feature/l;->q:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 388
    iget-object v0, p0, Lcom/apkol/root/feature/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 389
    iget-object v1, p0, Lcom/apkol/root/feature/l;->d:Landroid/content/res/Resources;

    const v3, 0x7f060038

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 388
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 392
    :cond_0
    const v0, 0x7f09007b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/apkol/root/feature/l;->p:Landroid/support/v4/view/ViewPager;

    .line 393
    iget-object v0, p0, Lcom/apkol/root/feature/l;->p:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/apkol/root/feature/l;->d:Landroid/content/res/Resources;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setBackgroundColor(I)V

    .line 394
    iget-object v0, p0, Lcom/apkol/root/feature/l;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/apkol/root/feature/l;->b(I)V

    .line 395
    return-void

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/apkol/root/feature/l;->e()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 385
    iget-object v4, p0, Lcom/apkol/root/feature/l;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    iget-object v4, p0, Lcom/apkol/root/feature/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/apkol/root/feature/l;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/apkol/root/feature/l;->J:Landroid/os/Handler;

    return-object v0
.end method

.method private e()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    .line 446
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 447
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 448
    iget-object v2, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v3

    .line 447
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 449
    iget-object v2, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v2, v3}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 450
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-object v1, p0, Lcom/apkol/root/feature/l;->d:Landroid/content/res/Resources;

    const v2, 0x7f060039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 452
    return-object v0
.end method

.method static synthetic f(Lcom/apkol/root/feature/l;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/apkol/root/feature/l;->w:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/apkol/root/feature/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/apkol/root/feature/l;->y:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    .line 459
    const v1, 0x7f03001a

    .line 458
    invoke-static {v0, v1}, Lcom/apkol/utils/w;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 460
    invoke-direct {p0, p2, v0}, Lcom/apkol/root/feature/l;->a(ILandroid/view/View;)V

    .line 461
    return-object v0
.end method

.method public varargs a(Lcom/apkol/utils/h/b;Landroid/os/Message;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 646
    const/4 v0, 0x0

    aget-object v2, p3, v0

    check-cast v2, Ljava/lang/String;

    .line 648
    iget v0, p2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 674
    :cond_0
    :goto_0
    return-object v9

    .line 650
    :pswitch_0
    new-instance v1, Lcom/apkol/utils/e/b$d;

    invoke-direct {v1}, Lcom/apkol/utils/e/b$d;-><init>()V

    .line 651
    iget-object v0, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    iput-object v0, v1, Lcom/apkol/utils/e/b$d;->c:Landroid/content/Context;

    .line 652
    iput-object v2, v1, Lcom/apkol/utils/e/b$d;->b:Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/l$b;

    .line 655
    iput-object v1, v0, Lcom/apkol/root/feature/l$b;->e:Lcom/apkol/utils/e/b$b;

    .line 656
    iget-object v1, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v1, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apkol/root/feature/l$b;

    .line 659
    iget-object v1, v1, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    .line 661
    iget-object v3, p0, Lcom/apkol/root/feature/l;->H:Lcom/apkol/utils/e/e;

    iget-object v4, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v9}, Lcom/apkol/utils/e/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v5

    .line 662
    const-wide/16 v3, 0x0

    .line 663
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/apkol/root/feature/l;->y:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/apkol/root/feature/l$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 664
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 667
    :cond_1
    iput-wide v3, v0, Lcom/apkol/root/feature/l$b;->b:J

    .line 668
    iput-wide v5, v0, Lcom/apkol/root/feature/l$b;->a:J

    .line 669
    iget-object v0, p0, Lcom/apkol/root/feature/l;->H:Lcom/apkol/utils/e/e;

    iget-object v1, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-virtual/range {v0 .. v7}, Lcom/apkol/utils/e/e;->a(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 237
    iget-boolean v0, p0, Lcom/apkol/root/feature/l;->I:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/n;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/apkol/root/feature/l;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/apkol/root/feature/l;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/apkol/root/feature/l;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/feature/l;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/apkol/root/feature/l;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/apkol/root/feature/l;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 246
    iget-object v0, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    .line 247
    const v1, 0x7f030017

    .line 246
    invoke-static {v0, v1}, Lcom/apkol/utils/w;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 248
    iget-object v0, p0, Lcom/apkol/root/feature/l;->d:Landroid/content/res/Resources;

    const v2, 0x7f06001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 249
    const v0, 0x7f090066

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/apkol/root/feature/l;->g:Landroid/widget/TextView;

    .line 250
    iget-object v0, p0, Lcom/apkol/root/feature/l;->g:Landroid/widget/TextView;

    const v2, 0x7f050071

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 251
    iget-object v0, p0, Lcom/apkol/root/feature/l;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    invoke-direct {p0}, Lcom/apkol/root/feature/l;->c()V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/feature/l;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/apkol/root/feature/l;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/apkol/root/feature/l;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 640
    return-void
.end method

.method public a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 687
    return-void
.end method

.method public varargs a(Landroid/os/Message;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/ArrayList;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/feature/l$a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 482
    .line 483
    iget-object v0, p0, Lcom/apkol/root/feature/l;->r:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 482
    check-cast v0, Landroid/widget/LinearLayout;

    .line 484
    iget-object v1, p0, Lcom/apkol/root/feature/l;->u:[I

    aget v1, v1, p3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 486
    iget-object v2, p0, Lcom/apkol/root/feature/l;->s:[I

    aget v2, v2, p3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 485
    check-cast v2, Lcom/apkol/utils/ui/AutoBgButton;

    .line 487
    iget-object v3, p0, Lcom/apkol/root/feature/l;->t:[I

    aget v3, v3, p3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 489
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apkol/root/feature/l$a;

    .line 491
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    iget-object v0, v4, Lcom/apkol/root/feature/l$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/apkol/root/feature/l;->w:Ljava/util/Map;

    iget-object v5, v4, Lcom/apkol/root/feature/l$a;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const/high16 v0, 0x7f090000

    iget-object v5, v4, Lcom/apkol/root/feature/l$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lcom/apkol/utils/ui/AutoBgButton;->setTag(ILjava/lang/Object;)V

    .line 496
    const v0, 0x7f090001

    iget-object v5, v4, Lcom/apkol/root/feature/l$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lcom/apkol/utils/ui/AutoBgButton;->setTag(ILjava/lang/Object;)V

    .line 497
    invoke-virtual {v2, p0}, Lcom/apkol/utils/ui/AutoBgButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v0, p0, Lcom/apkol/root/feature/l;->x:Lcom/apkol/utils/c;

    iget-object v5, v4, Lcom/apkol/root/feature/l$a;->d:Ljava/lang/String;

    .line 500
    new-instance v6, Lcom/apkol/root/feature/p;

    invoke-direct {v6, p0}, Lcom/apkol/root/feature/p;-><init>(Lcom/apkol/root/feature/l;)V

    .line 519
    iget-object v7, p0, Lcom/apkol/root/feature/l;->y:Ljava/lang/String;

    .line 499
    invoke-virtual {v0, v5, v6, v7}, Lcom/apkol/utils/c;->a(Ljava/lang/String;Lcom/apkol/utils/c$b;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_0

    .line 523
    iget-object v5, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/apkol/utils/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 522
    invoke-virtual {v2, v0}, Lcom/apkol/utils/ui/AutoBgButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    :cond_0
    new-instance v0, Lcom/apkol/root/feature/l$b;

    invoke-direct {v0, p0}, Lcom/apkol/root/feature/l$b;-><init>(Lcom/apkol/root/feature/l;)V

    .line 527
    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 528
    iput-object v1, v0, Lcom/apkol/root/feature/l$b;->d:Landroid/widget/ProgressBar;

    .line 529
    iput-object v3, v0, Lcom/apkol/root/feature/l$b;->c:Landroid/widget/TextView;

    .line 530
    iput-object v4, v0, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    .line 531
    iget-object v1, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    iget-object v2, v4, Lcom/apkol/root/feature/l$a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 692
    check-cast p1, Lcom/apkol/utils/e/e$a;

    .line 694
    iget v0, p1, Lcom/apkol/utils/e/e$a;->b:I

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_1

    .line 695
    iget-object v0, p1, Lcom/apkol/utils/e/e$a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 696
    invoke-direct {p0, v0, v1}, Lcom/apkol/root/feature/l;->a(J)Z

    move-result v0

    .line 697
    if-nez v0, :cond_0

    .line 698
    iget-object v0, p1, Lcom/apkol/utils/e/e$a;->a:Lcom/apkol/utils/e/b$b;

    iput-boolean v3, v0, Lcom/apkol/utils/e/b$b;->f:Z

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget v0, p1, Lcom/apkol/utils/e/e$a;->b:I

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_2

    .line 701
    iget-object v0, p1, Lcom/apkol/utils/e/e$a;->a:Lcom/apkol/utils/e/b$b;

    iget-boolean v0, v0, Lcom/apkol/utils/e/b$b;->f:Z

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p1, Lcom/apkol/utils/e/e$a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 703
    iget-object v0, p1, Lcom/apkol/utils/e/e$a;->a:Lcom/apkol/utils/e/b$b;

    iget-object v0, v0, Lcom/apkol/utils/e/b$b;->b:Ljava/lang/String;

    .line 704
    iget-object v2, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/l$b;

    .line 705
    if-eqz v0, :cond_0

    .line 706
    iget-wide v2, v0, Lcom/apkol/root/feature/l$b;->b:J

    int-to-long v4, v1

    add-long v1, v2, v4

    iput-wide v1, v0, Lcom/apkol/root/feature/l$b;->b:J

    .line 707
    iget-wide v1, v0, Lcom/apkol/root/feature/l$b;->b:J

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    iget-wide v3, v0, Lcom/apkol/root/feature/l$b;->a:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 708
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 709
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 710
    iget-object v0, v0, Lcom/apkol/root/feature/l$b;->d:Landroid/widget/ProgressBar;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 711
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 712
    iget-object v0, p0, Lcom/apkol/root/feature/l;->J:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 715
    :cond_2
    iget v0, p1, Lcom/apkol/utils/e/e$a;->b:I

    const/16 v1, 0x1004

    if-ne v0, v1, :cond_3

    .line 716
    iget-object v0, p1, Lcom/apkol/utils/e/e$a;->a:Lcom/apkol/utils/e/b$b;

    iget-object v0, v0, Lcom/apkol/utils/e/b$b;->b:Ljava/lang/String;

    .line 717
    iget-object v1, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/l$b;

    .line 718
    if-eqz v0, :cond_0

    .line 719
    iget-object v1, v0, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    .line 720
    iget-object v2, v0, Lcom/apkol/root/feature/l$b;->e:Lcom/apkol/utils/e/b$b;

    .line 721
    iput-boolean v4, v1, Lcom/apkol/root/feature/l$a;->i:Z

    .line 722
    iput-boolean v3, v2, Lcom/apkol/utils/e/b$b;->f:Z

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apkol/root/feature/l;->y:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/apkol/root/feature/l$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 777 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/apkol/utils/i;->a(Ljava/lang/String;)Z

    .line 727
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 728
    iput v4, v1, Landroid/os/Message;->what:I

    .line 729
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 730
    iget-object v0, p0, Lcom/apkol/root/feature/l;->J:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 732
    :cond_3
    iget v0, p1, Lcom/apkol/utils/e/e$a;->b:I

    const/16 v1, 0x1006

    if-eq v0, v1, :cond_4

    .line 733
    iget v0, p1, Lcom/apkol/utils/e/e$a;->b:I

    const/16 v1, 0x1005

    if-ne v0, v1, :cond_0

    .line 734
    :cond_4
    iget-object v0, p1, Lcom/apkol/utils/e/e$a;->a:Lcom/apkol/utils/e/b$b;

    iget-object v0, v0, Lcom/apkol/utils/e/b$b;->b:Ljava/lang/String;

    .line 735
    iget-object v1, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/l$b;

    .line 736
    if-eqz v0, :cond_0

    .line 737
    iget-object v1, v0, Lcom/apkol/root/feature/l$b;->e:Lcom/apkol/utils/e/b$b;

    .line 738
    iput-boolean v3, v1, Lcom/apkol/utils/e/b$b;->f:Z

    .line 740
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 741
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 742
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Lcom/apkol/root/feature/l;->J:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/apkol/root/feature/l$b;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 554
    iget-object v0, p2, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    .line 555
    iget-object v1, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    .line 556
    iget-object v2, v0, Lcom/apkol/root/feature/l$a;->g:Ljava/lang/String;

    .line 555
    invoke-direct {p0, v1, v2}, Lcom/apkol/root/feature/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 559
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 561
    if-eqz v1, :cond_1

    .line 562
    const-string v1, "installed"

    iget-object v3, v0, Lcom/apkol/root/feature/l$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v1, "softrecommand"

    .line 564
    iget-object v3, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 566
    iget-object v1, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/apkol/root/feature/l$a;->g:Ljava/lang/String;

    .line 567
    iget-object v0, v0, Lcom/apkol/root/feature/l$a;->f:Ljava/lang/String;

    .line 566
    invoke-direct {p0, v1, v2, v0}, Lcom/apkol/root/feature/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apkol/root/feature/l;->y:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/apkol/root/feature/l$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/apkol/root/feature/l$a;->i:Z

    if-eqz v1, :cond_2

    .line 574
    const-string v1, "localfile"

    iget-object v0, v0, Lcom/apkol/root/feature/l$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v0, "softrecommand"

    .line 576
    iget-object v1, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 579
    iget-object v0, p2, Lcom/apkol/root/feature/l$b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 580
    iget-object v0, p2, Lcom/apkol/root/feature/l$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v0, p2, Lcom/apkol/root/feature/l$b;->c:Landroid/widget/TextView;

    const v1, 0x7f0500f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 582
    invoke-direct {p0, p2}, Lcom/apkol/root/feature/l;->a(Lcom/apkol/root/feature/l$b;)V

    goto :goto_0

    .line 585
    :cond_2
    const-string v0, "downfile"

    iget-object v1, p2, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    iget-object v1, v1, Lcom/apkol/root/feature/l$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v0, "softrecommand"

    .line 587
    iget-object v1, p0, Lcom/apkol/root/feature/l;->c:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 589
    iget-object v0, p2, Lcom/apkol/root/feature/l$b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 590
    iget-object v0, p2, Lcom/apkol/root/feature/l$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    iget-object v0, p2, Lcom/apkol/root/feature/l$b;->e:Lcom/apkol/utils/e/b$b;

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p2, Lcom/apkol/root/feature/l$b;->e:Lcom/apkol/utils/e/b$b;

    iget-boolean v0, v0, Lcom/apkol/utils/e/b$b;->f:Z

    if-nez v0, :cond_0

    .line 593
    :cond_3
    iget-object v0, p2, Lcom/apkol/root/feature/l$b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 594
    invoke-direct {p0, p1}, Lcom/apkol/root/feature/l;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/root/feature/l$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .line 349
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/apkol/root/feature/l;->a:Ljava/lang/String;

    const-string v1, "bubblesort"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void

    .line 350
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v2, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 349
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 351
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/l$a;

    iget v1, v0, Lcom/apkol/root/feature/l$a;->h:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/l$a;

    iget v0, v0, Lcom/apkol/root/feature/l$a;->h:I

    if-ge v1, v0, :cond_2

    .line 352
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/apkol/root/feature/l$a;

    .line 353
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/l$a;

    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 542
    :sswitch_0
    const v0, 0x7f090001

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 543
    iget-object v1, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/apkol/root/feature/l;->v:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apkol/root/feature/l$b;

    .line 545
    invoke-virtual {p0, v0, v1}, Lcom/apkol/root/feature/l;->a(Ljava/lang/String;Lcom/apkol/root/feature/l$b;)V

    goto :goto_0

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09006b -> :sswitch_0
        0x7f09006f -> :sswitch_0
        0x7f090073 -> :sswitch_0
        0x7f090077 -> :sswitch_0
    .end sparse-switch
.end method
