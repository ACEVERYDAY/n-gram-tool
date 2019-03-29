.class public Lcom/apkol/utils/ui/a;
.super Landroid/widget/GridView;
.source "BaseGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/utils/ui/a$a;,
        Lcom/apkol/utils/ui/a$b;,
        Lcom/apkol/utils/ui/a$c;
    }
.end annotation


# instance fields
.field private a:Lcom/apkol/utils/ui/a$a;

.field private b:Lcom/apkol/utils/ui/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/apkol/utils/ui/a$a;

    invoke-direct {v0, p0, p1}, Lcom/apkol/utils/ui/a$a;-><init>(Lcom/apkol/utils/ui/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apkol/utils/ui/a;->a:Lcom/apkol/utils/ui/a$a;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/apkol/utils/ui/a$a;

    invoke-direct {v0, p0, p1}, Lcom/apkol/utils/ui/a$a;-><init>(Lcom/apkol/utils/ui/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apkol/utils/ui/a;->a:Lcom/apkol/utils/ui/a$a;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/apkol/utils/ui/a;)Lcom/apkol/utils/ui/c;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/apkol/utils/ui/a;->b:Lcom/apkol/utils/ui/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/apkol/utils/ui/a;->a:Lcom/apkol/utils/ui/a$a;

    invoke-virtual {v0}, Lcom/apkol/utils/ui/a$a;->notifyDataSetChanged()V

    .line 46
    return-void
.end method

.method public setBaseCondition(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/apkol/utils/ui/a;->a:Lcom/apkol/utils/ui/a$a;

    invoke-virtual {v0, p1}, Lcom/apkol/utils/ui/a$a;->a(Ljava/util/List;)V

    .line 38
    return-void
.end method

.method public setBaseGridViewListener(Lcom/apkol/utils/ui/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iput-object p1, p0, Lcom/apkol/utils/ui/a;->b:Lcom/apkol/utils/ui/c;

    .line 51
    new-instance v0, Lcom/apkol/utils/ui/a$b;

    invoke-direct {v0, p0, v1}, Lcom/apkol/utils/ui/a$b;-><init>(Lcom/apkol/utils/ui/a;Lcom/apkol/utils/ui/a$b;)V

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/a;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    new-instance v0, Lcom/apkol/utils/ui/a$c;

    invoke-direct {v0, p0, v1}, Lcom/apkol/utils/ui/a$c;-><init>(Lcom/apkol/utils/ui/a;Lcom/apkol/utils/ui/a$c;)V

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/a;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/apkol/utils/ui/a;->a:Lcom/apkol/utils/ui/a$a;

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/a;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    return-void
.end method

.method public setLayoutResId(I)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/apkol/utils/ui/a;->a:Lcom/apkol/utils/ui/a$a;

    invoke-virtual {v0, p1}, Lcom/apkol/utils/ui/a$a;->a(I)V

    .line 42
    return-void
.end method
