.class Lcom/upay/billing/engine/JsonUiImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/JsonUiImpl;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/JsonUiImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->this$0:Lcom/upay/billing/engine/JsonUiImpl;

    iput p2, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->this$0:Lcom/upay/billing/engine/JsonUiImpl;

    iget v1, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->val$resultCode:I

    invoke-static {v0, v1}, Lcom/upay/billing/engine/JsonUiImpl;->access$002(Lcom/upay/billing/engine/JsonUiImpl;I)I

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->this$0:Lcom/upay/billing/engine/JsonUiImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/JsonUiImpl;->access$100(Lcom/upay/billing/engine/JsonUiImpl;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->val$resultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->this$0:Lcom/upay/billing/engine/JsonUiImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/JsonUiImpl;->access$100(Lcom/upay/billing/engine/JsonUiImpl;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->this$0:Lcom/upay/billing/engine/JsonUiImpl;

    invoke-virtual {v0}, Lcom/upay/billing/engine/JsonUiImpl;->verifyMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->this$0:Lcom/upay/billing/engine/JsonUiImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/JsonUiImpl;->access$200(Lcom/upay/billing/engine/JsonUiImpl;)Lcom/upay/billing/UpayActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/UpayActivity;->myDestory()V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->this$0:Lcom/upay/billing/engine/JsonUiImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/JsonUiImpl;->access$200(Lcom/upay/billing/engine/JsonUiImpl;)Lcom/upay/billing/UpayActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/UpayActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->this$0:Lcom/upay/billing/engine/JsonUiImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/JsonUiImpl;->access$200(Lcom/upay/billing/engine/JsonUiImpl;)Lcom/upay/billing/UpayActivity;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u4fe1\u606f\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->this$0:Lcom/upay/billing/engine/JsonUiImpl;

    invoke-virtual {v0}, Lcom/upay/billing/engine/JsonUiImpl;->verifyMethod()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->this$0:Lcom/upay/billing/engine/JsonUiImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/JsonUiImpl;->access$200(Lcom/upay/billing/engine/JsonUiImpl;)Lcom/upay/billing/UpayActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/UpayActivity;->myDestory()V

    :cond_3
    iget-object v0, p0, Lcom/upay/billing/engine/JsonUiImpl$1;->this$0:Lcom/upay/billing/engine/JsonUiImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/JsonUiImpl;->access$200(Lcom/upay/billing/engine/JsonUiImpl;)Lcom/upay/billing/UpayActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/UpayActivity;->finish()V

    goto :goto_0
.end method
