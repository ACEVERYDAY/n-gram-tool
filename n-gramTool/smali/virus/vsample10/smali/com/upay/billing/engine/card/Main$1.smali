.class Lcom/upay/billing/engine/card/Main$1;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/card/Main;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/card/Main;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed(Lcom/upay/billing/UpayActivity;)Z
    .locals 3

    const/16 v2, 0x6e

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/card/Main;->access$1100(Lcom/upay/billing/engine/card/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v1, "card-pay-cancel"

    invoke-static {v0, v2, v1}, Lcom/upay/billing/engine/card/Main;->access$1400(Lcom/upay/billing/engine/card/Main;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_card_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/upay/billing/UpayActivityExt;->onBackPressed(Lcom/upay/billing/UpayActivity;)Z

    move-result v0

    return v0
.end method

.method public onPostCreate(Lcom/upay/billing/UpayActivity;)V
    .locals 4

    const/high16 v3, 0x41700000    # 15.0f

    invoke-super {p0, p1}, Lcom/upay/billing/UpayActivityExt;->onPostCreate(Lcom/upay/billing/UpayActivity;)V

    const-string v0, "upay_pay_card"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->layout(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->setContentView(I)V

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "imagebutton_backout"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$002(Lcom/upay/billing/engine/card/Main;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "imagebutton_backout"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$002(Lcom/upay/billing/engine/card/Main;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "textView_md"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$102(Lcom/upay/billing/engine/card/Main;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "textView_amount"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$202(Lcom/upay/billing/engine/card/Main;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "commodity_amount"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$302(Lcom/upay/billing/engine/card/Main;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "textView_card_type"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$402(Lcom/upay/billing/engine/card/Main;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "textView_card_value"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$502(Lcom/upay/billing/engine/card/Main;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "card_type_row"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$602(Lcom/upay/billing/engine/card/Main;Landroid/widget/TableRow;)Landroid/widget/TableRow;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "card_value_row"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$702(Lcom/upay/billing/engine/card/Main;Landroid/widget/TableRow;)Landroid/widget/TableRow;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "editText_number"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$802(Lcom/upay/billing/engine/card/Main;Landroid/widget/EditText;)Landroid/widget/EditText;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "editText_pw"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$902(Lcom/upay/billing/engine/card/Main;Landroid/widget/EditText;)Landroid/widget/EditText;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v0, "pay_ok"

    invoke-static {v0}, Lcom/upay/billing/engine/UpayMResource;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/upay/billing/engine/card/Main;->access$1002(Lcom/upay/billing/engine/card/Main;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$100(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5145\u503c\u5361"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$100(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#089afc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$100(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$200(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u6d88\u8d39\u91d1\u989d\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$200(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#797979"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$200(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$300(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/card/Main;->access$1100(Lcom/upay/billing/engine/card/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v2

    iget v2, v2, Lcom/upay/billing/bean/Trade;->price:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$300(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#f1b838"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$300(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$400(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u5145\u503c\u5361\u7c7b\u578b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$400(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#797979"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$400(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$600(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TableRow;

    move-result-object v0

    new-instance v1, Lcom/upay/billing/engine/card/Main$1$1;

    invoke-direct {v1, p0, p1}, Lcom/upay/billing/engine/card/Main$1$1;-><init>(Lcom/upay/billing/engine/card/Main$1;Lcom/upay/billing/UpayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$500(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u5145\u503c\u5361\u9762\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$500(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#797979"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$500(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$700(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TableRow;

    move-result-object v0

    new-instance v1, Lcom/upay/billing/engine/card/Main$1$2;

    invoke-direct {v1, p0, p1}, Lcom/upay/billing/engine/card/Main$1$2;-><init>(Lcom/upay/billing/engine/card/Main$1;Lcom/upay/billing/UpayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$800(Lcom/upay/billing/engine/card/Main;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u5145\u503c\u5361\u5361\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$800(Lcom/upay/billing/engine/card/Main;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "#797979"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$800(Lcom/upay/billing/engine/card/Main;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$900(Lcom/upay/billing/engine/card/Main;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u5145\u503c\u5361\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$900(Lcom/upay/billing/engine/card/Main;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "#797979"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$900(Lcom/upay/billing/engine/card/Main;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$000(Lcom/upay/billing/engine/card/Main;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/upay/billing/engine/card/Main$1$3;

    invoke-direct {v1, p0}, Lcom/upay/billing/engine/card/Main$1$3;-><init>(Lcom/upay/billing/engine/card/Main$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$1000(Lcom/upay/billing/engine/card/Main;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/upay/billing/engine/card/Main$1$4;

    invoke-direct {v1, p0, p1}, Lcom/upay/billing/engine/card/Main$1$4;-><init>(Lcom/upay/billing/engine/card/Main$1;Lcom/upay/billing/UpayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
