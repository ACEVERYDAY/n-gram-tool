.class Lcom/upay/billing/engine/wxapi/Main$4;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/wxapi/Main;

.field final synthetic val$isClose:Z

.field final synthetic val$progressText:Ljava/lang/String;

.field final synthetic val$uiKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/wxapi/Main;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/wxapi/Main$4;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iput-boolean p2, p0, Lcom/upay/billing/engine/wxapi/Main$4;->val$isClose:Z

    iput-object p3, p0, Lcom/upay/billing/engine/wxapi/Main$4;->val$uiKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/wxapi/Main$4;->val$progressText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Lcom/upay/billing/UpayActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/upay/billing/UpayConstant;->RESOURCE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "test_app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Lcom/upay/billing/UpayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/upay/billing/UpayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method

.method public onBackPressed(Lcom/upay/billing/UpayActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/upay/billing/engine/wxapi/Main$4;->val$isClose:Z

    return v0
.end method

.method public onFinish(Lcom/upay/billing/UpayActivity;I)V
    .locals 3

    const/16 v2, 0x79

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$4;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-virtual {v0}, Lcom/upay/billing/engine/wxapi/Main;->verifyApp()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "upay_wx_ui"

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$4;->val$uiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$4;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$4;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi/Main;->access$000(Lcom/upay/billing/engine/wxapi/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$4;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    const-string v1, "code\uff1a185,error\uff1aweixin-service-install-fail"

    invoke-static {v0, v2, v1}, Lcom/upay/billing/engine/wxapi/Main;->access$100(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "$progress_text"

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$4;->val$progressText:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method
