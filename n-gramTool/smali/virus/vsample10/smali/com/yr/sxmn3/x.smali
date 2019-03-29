.class final Lcom/yr/sxmn3/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/HomePageFragment;


# direct methods
.method private constructor <init>(Lcom/yr/sxmn3/HomePageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yr/sxmn3/HomePageFragment;Lcom/yr/sxmn3/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yr/sxmn3/x;-><init>(Lcom/yr/sxmn3/HomePageFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v1}, Lcom/yr/sxmn3/HomePageFragment;->u(Lcom/yr/sxmn3/HomePageFragment;)Landroid/app/Activity;

    move-result-object v1

    const-class v4, Lcom/yr/sxmn3/PlayerActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v1}, Lcom/yr/sxmn3/HomePageFragment;->u(Lcom/yr/sxmn3/HomePageFragment;)Landroid/app/Activity;

    move-result-object v1

    const-class v4, Lcom/yr/sxmn3/DetailActivity;

    invoke-direct {v5, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v1}, Lcom/yr/sxmn3/HomePageFragment;->v(Lcom/yr/sxmn3/HomePageFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "KF"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-nez v1, :cond_0

    const-string v1, "url"

    const-string v2, "http://imgtu.chnhtp.com:8081/shibo/3.mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "time"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-virtual {v1, v0}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->u(Lcom/yr/sxmn3/HomePageFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u60a8\u5df2\u662f\u4f1a\u5458\u8bf7\u5230\u4f1a\u5458\u533a\u89c2\u770b"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    if-nez v1, :cond_1

    const-string v1, "url"

    const-string v2, "http://imgtu.chnhtp.com:8081/shibo/8.mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "time"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-virtual {v1, v0}, Lcom/yr/sxmn3/HomePageFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->u(Lcom/yr/sxmn3/HomePageFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u60a8\u5df2\u662f\u4f1a\u5458\u8bf7\u5230\u4f1a\u5458\u533a\u89c2\u770b"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v3, v8

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v3, v9

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v3, v7

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v2, v8

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_9
    iget-object v6, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v7, v1

    move v9, v2

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v2, v8

    move v3, v8

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v2, v8

    move v3, v9

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v2, v8

    move v3, v7

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v2, v9

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v6, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v7, v1

    move v8, v9

    move v9, v2

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v2, v9

    move v3, v8

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v2, v9

    move v3, v9

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/yr/sxmn3/x;->a:Lcom/yr/sxmn3/HomePageFragment;

    move v2, v9

    move v3, v7

    invoke-static/range {v0 .. v5}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;ZIILandroid/content/Intent;Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a002e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
