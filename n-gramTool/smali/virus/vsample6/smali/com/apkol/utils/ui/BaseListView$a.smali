.class public Lcom/apkol/utils/ui/BaseListView$a;
.super Landroid/widget/BaseAdapter;
.source "BaseListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/utils/ui/BaseListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apkol/utils/ui/BaseListView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/apkol/utils/ui/BaseListView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 79
    iput-object p1, p0, Lcom/apkol/utils/ui/BaseListView$a;->a:Lcom/apkol/utils/ui/BaseListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/apkol/utils/ui/BaseListView$a;->d:Landroid/content/Context;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/apkol/utils/ui/BaseListView$a;->e:I

    .line 82
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView$a;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/utils/ui/BaseListView$a;->c:Landroid/view/LayoutInflater;

    .line 83
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/apkol/utils/ui/BaseListView$a;->e:I

    .line 87
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
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
    .line 97
    iput-object p1, p0, Lcom/apkol/utils/ui/BaseListView$a;->b:Ljava/util/List;

    .line 98
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 121
    if-nez p2, :cond_0

    .line 122
    iget v0, p0, Lcom/apkol/utils/ui/BaseListView$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView$a;->c:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/apkol/utils/ui/BaseListView$a;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView$a;->a:Lcom/apkol/utils/ui/BaseListView;

    invoke-static {v0}, Lcom/apkol/utils/ui/BaseListView;->a(Lcom/apkol/utils/ui/BaseListView;)Lcom/apkol/utils/ui/c;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/utils/ui/BaseListView$a;->b:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/apkol/utils/ui/c;->a(Ljava/util/List;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 128
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView$a;->a:Lcom/apkol/utils/ui/BaseListView;

    invoke-static {v0}, Lcom/apkol/utils/ui/BaseListView;->a(Lcom/apkol/utils/ui/BaseListView;)Lcom/apkol/utils/ui/c;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/utils/ui/BaseListView$a;->b:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/apkol/utils/ui/c;->a(Ljava/util/List;I)Z

    move-result v0

    .line 93
    return v0
.end method
