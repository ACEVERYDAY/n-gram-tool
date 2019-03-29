.class public Lcom/apkol/root/feature/aq;
.super Ljava/lang/Object;
.source "UpdateFeature.java"

# interfaces
.implements Lcom/apkol/utils/e/h$a;
.implements Lcom/apkol/utils/h/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/apkol/root/ao;

.field private c:Lcom/apkol/utils/h/b;

.field private final d:I

.field private e:Landroid/app/Dialog;

.field private f:Lcom/apkol/root/b/j;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/feature/aq;->d:I

    .line 37
    new-instance v0, Lcom/apkol/root/feature/ar;

    invoke-direct {v0, p0}, Lcom/apkol/root/feature/ar;-><init>(Lcom/apkol/root/feature/aq;)V

    iput-object v0, p0, Lcom/apkol/root/feature/aq;->g:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/apkol/root/feature/aq;->a:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/feature/aq;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->e:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Lcom/apkol/root/feature/aq;Lcom/apkol/root/b/j;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/apkol/root/feature/aq;->f:Lcom/apkol/root/b/j;

    return-void
.end method

.method static synthetic b(Lcom/apkol/root/feature/aq;)Lcom/apkol/root/b/j;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->f:Lcom/apkol/root/b/j;

    return-object v0
.end method

.method static synthetic c(Lcom/apkol/root/feature/aq;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/apkol/root/feature/aq;)Lcom/apkol/utils/h/b;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->c:Lcom/apkol/utils/h/b;

    return-object v0
.end method

.method static synthetic e(Lcom/apkol/root/feature/aq;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public varargs a(Lcom/apkol/utils/h/b;Landroid/os/Message;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 168
    .line 169
    const/4 v0, 0x0

    .line 170
    iget v1, p2, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 178
    :goto_0
    return-object v0

    .line 172
    :pswitch_0
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/apkol/root/feature/aq;->a:Landroid/content/Context;

    invoke-static {v1, v0, p0}, Lcom/apkol/utils/e/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/apkol/utils/e/h$a;)[B

    move-result-object v0

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/apkol/root/feature/aq;->a:Landroid/content/Context;

    .line 123
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 122
    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 124
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 125
    const-string v0, ""

    .line 126
    const-string v0, ""

    .line 127
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 133
    :goto_1
    return-object v0

    .line 128
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/n;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/apkol/root/feature/aq;->a(I)V

    .line 118
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->a:Landroid/content/Context;

    const v1, 0x7f05008a

    invoke-static {v0, v1}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/aq;->e:Landroid/app/Dialog;

    .line 94
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->e:Landroid/app/Dialog;

    new-instance v1, Lcom/apkol/root/feature/as;

    invoke-direct {v1, p0}, Lcom/apkol/root/feature/as;-><init>(Lcom/apkol/root/feature/aq;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/feature/at;

    invoke-direct {v1, p0}, Lcom/apkol/root/feature/at;-><init>(Lcom/apkol/root/feature/aq;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/apkol/root/ao;

    iget-object v1, p0, Lcom/apkol/root/feature/aq;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/apkol/root/ao;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/apkol/root/feature/aq;->b:Lcom/apkol/root/ao;

    .line 147
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->b:Lcom/apkol/root/ao;

    invoke-virtual {v0}, Lcom/apkol/root/ao;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->b:Lcom/apkol/root/ao;

    invoke-virtual {v0}, Lcom/apkol/root/ao;->show()V

    .line 150
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :pswitch_0
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 190
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :pswitch_0
    return-void

    .line 190
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public varargs a(Landroid/os/Message;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 138
    new-instance v0, Lcom/apkol/root/ao;

    iget-object v1, p0, Lcom/apkol/root/feature/aq;->a:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 139
    invoke-direct/range {v0 .. v6}, Lcom/apkol/root/ao;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    iput-object v0, p0, Lcom/apkol/root/feature/aq;->b:Lcom/apkol/root/ao;

    .line 140
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->b:Lcom/apkol/root/ao;

    invoke-virtual {v0}, Lcom/apkol/root/ao;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->b:Lcom/apkol/root/ao;

    invoke-virtual {v0}, Lcom/apkol/root/ao;->show()V

    .line 143
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->c:Lcom/apkol/utils/h/b;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/apkol/root/feature/aq;->c:Lcom/apkol/utils/h/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apkol/utils/h/b;->cancel(Z)Z

    .line 219
    :cond_0
    return-void
.end method
