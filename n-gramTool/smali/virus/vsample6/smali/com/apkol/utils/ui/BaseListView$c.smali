.class Lcom/apkol/utils/ui/BaseListView$c;
.super Ljava/lang/Object;
.source "BaseListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/utils/ui/BaseListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apkol/utils/ui/BaseListView;


# direct methods
.method private constructor <init>(Lcom/apkol/utils/ui/BaseListView;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/apkol/utils/ui/BaseListView$c;->a:Lcom/apkol/utils/ui/BaseListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apkol/utils/ui/BaseListView;Lcom/apkol/utils/ui/BaseListView$c;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/apkol/utils/ui/BaseListView$c;-><init>(Lcom/apkol/utils/ui/BaseListView;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView$c;->a:Lcom/apkol/utils/ui/BaseListView;

    invoke-static {v0}, Lcom/apkol/utils/ui/BaseListView;->a(Lcom/apkol/utils/ui/BaseListView;)Lcom/apkol/utils/ui/c;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/apkol/utils/ui/c;->b(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 150
    const/4 v0, 0x0

    return v0
.end method
