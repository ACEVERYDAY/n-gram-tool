.class Lcom/apkol/utils/ui/BaseListView$b;
.super Ljava/lang/Object;
.source "BaseListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/utils/ui/BaseListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apkol/utils/ui/BaseListView;


# direct methods
.method private constructor <init>(Lcom/apkol/utils/ui/BaseListView;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/apkol/utils/ui/BaseListView$b;->a:Lcom/apkol/utils/ui/BaseListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apkol/utils/ui/BaseListView;Lcom/apkol/utils/ui/BaseListView$b;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/apkol/utils/ui/BaseListView$b;-><init>(Lcom/apkol/utils/ui/BaseListView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/apkol/utils/ui/BaseListView$b;->a:Lcom/apkol/utils/ui/BaseListView;

    invoke-static {v0}, Lcom/apkol/utils/ui/BaseListView;->a(Lcom/apkol/utils/ui/BaseListView;)Lcom/apkol/utils/ui/c;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/apkol/utils/ui/c;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 139
    return-void
.end method
