.class Lcom/apkol/utils/ui/a$c;
.super Ljava/lang/Object;
.source "BaseGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/utils/ui/a;
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
.field final synthetic a:Lcom/apkol/utils/ui/a;


# direct methods
.method private constructor <init>(Lcom/apkol/utils/ui/a;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/apkol/utils/ui/a$c;->a:Lcom/apkol/utils/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apkol/utils/ui/a;Lcom/apkol/utils/ui/a$c;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/apkol/utils/ui/a$c;-><init>(Lcom/apkol/utils/ui/a;)V

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
    .line 132
    iget-object v0, p0, Lcom/apkol/utils/ui/a$c;->a:Lcom/apkol/utils/ui/a;

    invoke-static {v0}, Lcom/apkol/utils/ui/a;->a(Lcom/apkol/utils/ui/a;)Lcom/apkol/utils/ui/c;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/apkol/utils/ui/c;->b(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 133
    const/4 v0, 0x0

    return v0
.end method
