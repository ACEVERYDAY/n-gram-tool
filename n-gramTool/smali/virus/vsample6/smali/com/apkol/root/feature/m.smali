.class Lcom/apkol/root/feature/m;
.super Landroid/os/Handler;
.source "SoftRecommend.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/l;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    .line 122
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 127
    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    invoke-static {v0}, Lcom/apkol/root/feature/l;->a(Lcom/apkol/root/feature/l;)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    invoke-static {v0}, Lcom/apkol/root/feature/l;->b(Lcom/apkol/root/feature/l;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f050073

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/apkol/root/feature/l$b;

    .line 142
    iget-object v1, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    invoke-static {v1}, Lcom/apkol/root/feature/l;->c(Lcom/apkol/root/feature/l;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    iget-object v0, v0, Lcom/apkol/root/feature/l$a;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/l$b;

    .line 143
    iget-object v1, v0, Lcom/apkol/root/feature/l$b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    iget-object v1, v0, Lcom/apkol/root/feature/l$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v1, v0, Lcom/apkol/root/feature/l$b;->c:Landroid/widget/TextView;

    const v2, 0x7f0500f2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v1, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    invoke-static {v1, v0}, Lcom/apkol/root/feature/l;->a(Lcom/apkol/root/feature/l;Lcom/apkol/root/feature/l$b;)V

    goto :goto_0

    .line 149
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/apkol/root/feature/l$b;

    .line 150
    iget-object v2, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    invoke-static {v2}, Lcom/apkol/root/feature/l;->c(Lcom/apkol/root/feature/l;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, v0, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    iget-object v0, v0, Lcom/apkol/root/feature/l$a;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/feature/l$b;

    .line 151
    iget-object v2, v0, Lcom/apkol/root/feature/l$b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object v2, v0, Lcom/apkol/root/feature/l$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v2, v0, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    iget-object v2, v2, Lcom/apkol/root/feature/l$a;->c:Ljava/lang/String;

    .line 154
    iget-object v3, v0, Lcom/apkol/root/feature/l$b;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v3, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    invoke-static {v3}, Lcom/apkol/root/feature/l;->d(Lcom/apkol/root/feature/l;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 156
    const v4, 0x7f0500f3

    .line 155
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    iget-object v4, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    invoke-static {v4}, Lcom/apkol/root/feature/l;->d(Lcom/apkol/root/feature/l;)Landroid/content/Context;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/apkol/utils/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    const-string v2, "failinstall"

    iget-object v0, v0, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    iget-object v0, v0, Lcom/apkol/root/feature/l$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "softrecommand"

    .line 161
    iget-object v2, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    invoke-static {v2}, Lcom/apkol/root/feature/l;->d(Lcom/apkol/root/feature/l;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 164
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/apkol/root/feature/l$b;

    .line 165
    iget-object v2, v0, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    iget-object v2, v2, Lcom/apkol/root/feature/l$a;->c:Ljava/lang/String;

    .line 166
    iget-object v3, v0, Lcom/apkol/root/feature/l$b;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    invoke-static {v3}, Lcom/apkol/root/feature/l;->d(Lcom/apkol/root/feature/l;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 168
    const v4, 0x7f0500f4

    .line 167
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    iget-object v4, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    invoke-static {v4}, Lcom/apkol/root/feature/l;->d(Lcom/apkol/root/feature/l;)Landroid/content/Context;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/apkol/utils/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    const-string v2, "sucinstall"

    iget-object v0, v0, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    iget-object v0, v0, Lcom/apkol/root/feature/l$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "softrecommand"

    .line 173
    iget-object v2, p0, Lcom/apkol/root/feature/m;->a:Lcom/apkol/root/feature/l;

    invoke-static {v2}, Lcom/apkol/root/feature/l;->d(Lcom/apkol/root/feature/l;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 177
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ProgressBar;

    .line 178
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
