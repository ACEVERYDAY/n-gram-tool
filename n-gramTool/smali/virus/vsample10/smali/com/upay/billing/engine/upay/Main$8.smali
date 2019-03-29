.class Lcom/upay/billing/engine/upay/Main$8;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/upay/Main;

.field final synthetic val$flag:Z

.field final synthetic val$progressText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/upay/Main;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main$8;->this$0:Lcom/upay/billing/engine/upay/Main;

    iput-boolean p2, p0, Lcom/upay/billing/engine/upay/Main$8;->val$flag:Z

    iput-object p3, p0, Lcom/upay/billing/engine/upay/Main$8;->val$progressText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed(Lcom/upay/billing/UpayActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/upay/billing/engine/upay/Main$8;->val$flag:Z

    return v0
.end method

.method public setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "$progress_text"

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$8;->val$progressText:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method
