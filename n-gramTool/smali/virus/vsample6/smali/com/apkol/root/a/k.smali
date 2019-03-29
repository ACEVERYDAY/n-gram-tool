.class Lcom/apkol/root/a/k;
.super Ljava/lang/Object;
.source "FramaRoot.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/a/f;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/k;->a:Lcom/apkol/root/a/f;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x0

    .line 341
    iget-object v0, p0, Lcom/apkol/root/a/k;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->k(Lcom/apkol/root/a/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 411
    iput v6, v0, Landroid/os/Message;->what:I

    .line 412
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 413
    const-string v1, "Run Frama Root Fail"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    iget-object v1, p0, Lcom/apkol/root/a/k;->a:Lcom/apkol/root/a/f;

    invoke-static {v1}, Lcom/apkol/root/a/f;->j(Lcom/apkol/root/a/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    :goto_1
    return-void

    .line 341
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    new-instance v2, Landroid/content/ComponentName;

    .line 352
    const-string v3, "com.alephzain.framaroot"

    .line 353
    const-string v4, "com.alephzain.framaroot.FramaAdbActivity"

    .line 351
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 355
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 356
    const-string v5, "exploit"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v5, "action"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 359
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 361
    iget-object v2, p0, Lcom/apkol/root/a/k;->a:Lcom/apkol/root/a/f;

    invoke-static {v2}, Lcom/apkol/root/a/f;->d(Lcom/apkol/root/a/f;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 363
    iget-object v2, p0, Lcom/apkol/root/a/k;->a:Lcom/apkol/root/a/f;

    invoke-static {v2}, Lcom/apkol/root/a/f;->i(Lcom/apkol/root/a/f;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "value = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_2
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/app/Superuser.apk"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/apkol/root/b/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/apkol/root/a/k;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->i(Lcom/apkol/root/a/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FramaService Success"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    new-instance v1, Landroid/content/ComponentName;

    .line 376
    const-string v2, "bmtet.wwjx.eat"

    .line 377
    const-string v3, "bmtet.wwjx.eat.RootActivity"

    .line 375
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 380
    iget-object v1, p0, Lcom/apkol/root/a/k;->a:Lcom/apkol/root/a/f;

    invoke-static {v1}, Lcom/apkol/root/a/f;->d(Lcom/apkol/root/a/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 383
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 384
    iput v6, v0, Landroid/os/Message;->what:I

    .line 385
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 386
    const-string v1, "Run Frama SUC"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    iget-object v1, p0, Lcom/apkol/root/a/k;->a:Lcom/apkol/root/a/f;

    invoke-static {v1}, Lcom/apkol/root/a/f;->j(Lcom/apkol/root/a/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 366
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 391
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 392
    new-instance v2, Landroid/content/ComponentName;

    .line 393
    const-string v3, "bmtet.wwjx.eat"

    .line 394
    const-string v4, "bmtet.wwjx.eat.RootActivity"

    .line 392
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 396
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 397
    iget-object v2, p0, Lcom/apkol/root/a/k;->a:Lcom/apkol/root/a/f;

    invoke-static {v2}, Lcom/apkol/root/a/f;->d(Lcom/apkol/root/a/f;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 400
    const-wide/16 v2, 0xbb8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 406
    :goto_3
    iget-object v0, p0, Lcom/apkol/root/a/k;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->d(Lcom/apkol/root/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.alephzain.framaroot"

    invoke-static {v0, v2}, Lcom/apkol/utils/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :catch_1
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method
