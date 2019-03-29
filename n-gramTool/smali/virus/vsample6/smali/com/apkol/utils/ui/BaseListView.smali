.class public Lcom/apkol/utils/ui/BaseListView;
.super Landroid/widget/ListView;
.source "BaseListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/utils/ui/BaseListView$a;,
        Lcom/apkol/utils/ui/BaseListView$b;,
        Lcom/apkol/utils/ui/BaseListView$c;
    }
.end annotation


# instance fields
.field private a:Lcom/apkol/utils/ui/BaseListView$a;

.field private b:Lcom/apkol/utils/ui/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/apkol/utils/ui/BaseListView$a;

    invoke-direct {v0, p0, p1}, Lcom/apkol/utils/ui/BaseListView$a;-><init>(Lcom/apkol/utils/ui/BaseListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apkol/utils/ui/BaseListView;->a:Lcom/apkol/utils/ui/BaseListView$a;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Lcom/apkol/utils/ui/BaseListView$a;

    invoke-direct {v0, p0, p1}, Lcom/apkol/utils/ui/BaseListView$a;-><init>(Lcom/apkol/utils/ui/BaseListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apkol/utils/ui/BaseListView;->a:Lcom/apkol/utils/ui/BaseListView$a;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/apkol/utils/ui/BaseListView;)Lcom/apkol/utils/ui/c;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView;->b:Lcom/apkol/utils/ui/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView;->a:Lcom/apkol/utils/ui/BaseListView$a;

    invoke-virtual {v0}, Lcom/apkol/utils/ui/BaseListView$a;->notifyDataSetChanged()V

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
    .line 41
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView;->a:Lcom/apkol/utils/ui/BaseListView$a;

    invoke-virtual {v0, p1}, Lcom/apkol/utils/ui/BaseListView$a;->a(Ljava/util/List;)V

    .line 42
    return-void
.end method

.method public setBaseListViewListener(Lcom/apkol/utils/ui/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iput-object p1, p0, Lcom/apkol/utils/ui/BaseListView;->b:Lcom/apkol/utils/ui/c;

    .line 55
    new-instance v0, Lcom/apkol/utils/ui/BaseListView$b;

    invoke-direct {v0, p0, v1}, Lcom/apkol/utils/ui/BaseListView$b;-><init>(Lcom/apkol/utils/ui/BaseListView;Lcom/apkol/utils/ui/BaseListView$b;)V

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/BaseListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    new-instance v0, Lcom/apkol/utils/ui/BaseListView$c;

    invoke-direct {v0, p0, v1}, Lcom/apkol/utils/ui/BaseListView$c;-><init>(Lcom/apkol/utils/ui/BaseListView;Lcom/apkol/utils/ui/BaseListView$c;)V

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/BaseListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 62
    const-string v0, "setBaseListViewListener"

    const-string v1, " setBaseListViewListener"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView;->a:Lcom/apkol/utils/ui/BaseListView$a;

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/BaseListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    return-void
.end method

.method public setLayoutResId(I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView;->a:Lcom/apkol/utils/ui/BaseListView$a;

    invoke-virtual {v0, p1}, Lcom/apkol/utils/ui/BaseListView$a;->a(I)V

    .line 50
    return-void
.end method
