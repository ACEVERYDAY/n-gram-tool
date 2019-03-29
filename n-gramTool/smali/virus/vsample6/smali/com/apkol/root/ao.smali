.class public Lcom/apkol/root/ao;
.super Landroid/app/AlertDialog;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/apkol/utils/e/h$a;
.implements Lcom/apkol/utils/h/a;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4


# instance fields
.field private A:Landroid/app/PendingIntent;

.field private B:J

.field private C:J

.field private D:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Landroid/content/res/Resources;

.field private i:I

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/ProgressBar;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/apkol/utils/h/b;

.field private t:J

.field private u:J

.field private v:Lcom/apkol/utils/e/b$c;

.field private w:Landroid/app/NotificationManager;

.field private x:I

.field private y:Landroid/widget/RemoteViews;

.field private z:Landroid/app/Notification;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 44
    const-class v0, Lcom/apkol/root/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/ao;->f:Ljava/lang/String;

    .line 85
    const v0, 0x258965

    iput v0, p0, Lcom/apkol/root/ao;->x:I

    .line 98
    iput-object p1, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/apkol/root/ao;->f:Ljava/lang/String;

    const-string v1, "UpdateDialog"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 44
    const-class v0, Lcom/apkol/root/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/ao;->f:Ljava/lang/String;

    .line 85
    const v0, 0x258965

    iput v0, p0, Lcom/apkol/root/ao;->x:I

    .line 116
    iput-object p1, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    .line 117
    iput p2, p0, Lcom/apkol/root/ao;->i:I

    .line 118
    iget-object v0, p0, Lcom/apkol/root/ao;->f:Ljava/lang/String;

    const-string v1, "UpdateDialog"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 44
    const-class v0, Lcom/apkol/root/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/ao;->f:Ljava/lang/String;

    .line 85
    const v0, 0x258965

    iput v0, p0, Lcom/apkol/root/ao;->x:I

    .line 105
    iput-object p1, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/apkol/root/ao;->o:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/apkol/root/ao;->p:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/apkol/root/ao;->q:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcom/apkol/root/ao;->r:Ljava/lang/String;

    .line 110
    iput p6, p0, Lcom/apkol/root/ao;->i:I

    .line 111
    iget-object v0, p0, Lcom/apkol/root/ao;->f:Ljava/lang/String;

    const-string v1, "UpdateDialog"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/ao;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/apkol/root/ao;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    .line 199
    new-instance v0, Lcom/apkol/root/aq;

    invoke-direct {v0, p0}, Lcom/apkol/root/aq;-><init>(Lcom/apkol/root/ao;)V

    invoke-virtual {p0, v0}, Lcom/apkol/root/ao;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 214
    iget v0, p0, Lcom/apkol/root/ao;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/apkol/root/ao;->b()V

    .line 217
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 7

    .prologue
    .line 268
    iget v0, p0, Lcom/apkol/root/ao;->i:I

    packed-switch v0, :pswitch_data_0

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 272
    :pswitch_0
    invoke-virtual {p0}, Lcom/apkol/root/ao;->dismiss()V

    goto :goto_0

    .line 275
    :pswitch_1
    invoke-virtual {p0}, Lcom/apkol/root/ao;->dismiss()V

    .line 276
    const v0, 0x7f09012b

    if-ne p1, v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/apkol/root/b/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apkol/root/ao;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-static {v0}, Lcom/apkol/utils/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lcom/apkol/root/ao;->r:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/apkol/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 284
    :cond_1
    new-instance v0, Lcom/apkol/root/ao;

    iget-object v1, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/apkol/root/ao;->o:Ljava/lang/String;

    .line 285
    iget-object v3, p0, Lcom/apkol/root/ao;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/apkol/root/ao;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/apkol/root/ao;->r:Ljava/lang/String;

    const/4 v6, 0x2

    .line 284
    invoke-direct/range {v0 .. v6}, Lcom/apkol/root/ao;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 286
    invoke-virtual {v0}, Lcom/apkol/root/ao;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/apkol/root/ao;->show()V

    goto :goto_0

    .line 293
    :pswitch_2
    invoke-virtual {p0}, Lcom/apkol/root/ao;->dismiss()V

    .line 294
    iget-object v0, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    invoke-virtual {v0}, Lcom/apkol/utils/h/b;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 296
    iget-object v0, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apkol/utils/h/b;->cancel(Z)Z

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/ao;->v:Lcom/apkol/utils/e/b$c;

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/apkol/root/ao;->v:Lcom/apkol/utils/e/b$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apkol/utils/e/b$c;->f:Z

    .line 301
    :cond_3
    invoke-direct {p0}, Lcom/apkol/root/ao;->h()V

    goto/16 :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 449
    iget-object v0, p0, Lcom/apkol/root/ao;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP_LENGTH ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apkol/root/ao;->t:J

    .line 451
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lcom/apkol/utils/i;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    invoke-virtual {v0}, Lcom/apkol/utils/i;->d()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 455
    iget-wide v1, p0, Lcom/apkol/root/ao;->t:J

    invoke-virtual {v0}, Lcom/apkol/utils/i;->d()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/apkol/root/ao;->f()V

    .line 471
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apkol/root/ao;->B:J

    .line 472
    return-void

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/apkol/root/ao;->e()V

    goto :goto_0

    .line 462
    :cond_2
    iget-wide v1, p0, Lcom/apkol/root/ao;->t:J

    .line 463
    iget-object v3, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/apkol/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 462
    invoke-virtual {v0, v3}, Lcom/apkol/utils/i;->b(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_3

    .line 464
    invoke-direct {p0}, Lcom/apkol/root/ao;->f()V

    goto :goto_0

    .line 467
    :cond_3
    invoke-direct {p0}, Lcom/apkol/root/ao;->e()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/apkol/root/ao;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const v5, 0x7f020043

    const/4 v4, 0x0

    .line 221
    iget-object v0, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    .line 222
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 221
    iput-object v0, p0, Lcom/apkol/root/ao;->w:Landroid/app/NotificationManager;

    .line 223
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 224
    const v2, 0x7f030047

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 223
    iput-object v0, p0, Lcom/apkol/root/ao;->y:Landroid/widget/RemoteViews;

    .line 226
    iget-object v0, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    .line 227
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 228
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/ao;->A:Landroid/app/PendingIntent;

    .line 229
    iget-object v0, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 230
    const v1, 0x7f05008b

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 232
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3, v5, v0, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v3, p0, Lcom/apkol/root/ao;->z:Landroid/app/Notification;

    .line 233
    iget-object v0, p0, Lcom/apkol/root/ao;->z:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 234
    iget-object v0, p0, Lcom/apkol/root/ao;->z:Landroid/app/Notification;

    iput v5, v0, Landroid/app/Notification;->icon:I

    .line 236
    const-string v0, "0"

    iput-object v0, p0, Lcom/apkol/root/ao;->D:Ljava/lang/String;

    .line 237
    return-void
.end method

.method private b(I)V
    .locals 7

    .prologue
    const v6, 0x7f09012f

    const/high16 v5, 0x44800000    # 1024.0f

    .line 368
    iget-wide v0, p0, Lcom/apkol/root/ao;->u:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/apkol/root/ao;->t:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 369
    iget-object v1, p0, Lcom/apkol/root/ao;->y:Landroid/widget/RemoteViews;

    const v2, 0x7f09012d

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 370
    iget-object v0, p0, Lcom/apkol/root/ao;->y:Landroid/widget/RemoteViews;

    const v1, 0x7f0900bd

    iget-object v2, p0, Lcom/apkol/root/ao;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 371
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/apkol/root/ao;->B:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/apkol/root/ao;->B:J

    .line 377
    iget-wide v1, p0, Lcom/apkol/root/ao;->C:J

    long-to-float v1, v1

    div-float/2addr v1, v5

    .line 378
    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 379
    iput-object v1, p0, Lcom/apkol/root/ao;->D:Ljava/lang/String;

    .line 380
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/apkol/root/ao;->C:J

    .line 384
    :goto_0
    iget-object v1, p0, Lcom/apkol/root/ao;->y:Landroid/widget/RemoteViews;

    const v2, 0x7f09012e

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apkol/root/ao;->D:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "KB/s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 386
    iget-wide v1, p0, Lcom/apkol/root/ao;->u:J

    long-to-float v1, v1

    div-float/2addr v1, v5

    .line 387
    cmpg-float v2, v1, v5

    if-gtz v2, :cond_1

    .line 388
    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 389
    iget-object v2, p0, Lcom/apkol/root/ao;->y:Landroid/widget/RemoteViews;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "K"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 395
    :goto_1
    iget-wide v1, p0, Lcom/apkol/root/ao;->t:J

    long-to-float v1, v1

    div-float/2addr v1, v5

    div-float/2addr v1, v5

    .line 396
    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/apkol/root/ao;->y:Landroid/widget/RemoteViews;

    const v2, 0x7f090038

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "M"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 398
    return-void

    .line 382
    :cond_0
    iget-wide v1, p0, Lcom/apkol/root/ao;->C:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/apkol/root/ao;->C:J

    goto :goto_0

    .line 391
    :cond_1
    div-float/2addr v1, v5

    .line 392
    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 393
    iget-object v2, p0, Lcom/apkol/root/ao;->y:Landroid/widget/RemoteViews;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "M"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/apkol/root/ao;)Lcom/apkol/utils/h/b;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 240
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/apkol/root/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/apkol/root/ao;->j:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Lcom/apkol/root/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/apkol/root/ao;->k:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f09012a

    invoke-virtual {p0, v0}, Lcom/apkol/root/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/apkol/root/ao;->l:Landroid/widget/Button;

    .line 243
    const v0, 0x7f09012b

    invoke-virtual {p0, v0}, Lcom/apkol/root/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/apkol/root/ao;->m:Landroid/widget/Button;

    .line 245
    iget-object v0, p0, Lcom/apkol/root/ao;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/apkol/root/ao;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v0, 0x7f090129

    invoke-virtual {p0, v0}, Lcom/apkol/root/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/apkol/root/ao;->n:Landroid/widget/ProgressBar;

    .line 249
    iget-object v0, p0, Lcom/apkol/root/ao;->n:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    return-void
.end method

.method static synthetic d(Lcom/apkol/root/ao;)Lcom/apkol/utils/e/b$c;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/apkol/root/ao;->v:Lcom/apkol/utils/e/b$c;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/apkol/root/ao;->p:Ljava/lang/String;

    .line 312
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 313
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 314
    new-instance v2, Lcom/apkol/utils/h/b;

    invoke-direct {v2, p0, v1}, Lcom/apkol/utils/h/b;-><init>(Lcom/apkol/utils/h/a;Landroid/os/Message;)V

    iput-object v2, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    .line 315
    iget-object v1, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    invoke-static {v1, v0}, Lcom/apkol/utils/y;->a(Lcom/apkol/utils/h/b;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/apkol/root/as;

    invoke-direct {v1, p0}, Lcom/apkol/root/as;-><init>(Lcom/apkol/root/ao;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method

.method static synthetic e(Lcom/apkol/root/ao;)V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/apkol/root/ao;->h()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    invoke-virtual {v0}, Lcom/apkol/utils/h/b;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apkol/utils/h/b;->cancel(Z)Z

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/ao;->v:Lcom/apkol/utils/e/b$c;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/apkol/root/ao;->v:Lcom/apkol/utils/e/b$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apkol/utils/e/b$c;->f:Z

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/apkol/root/at;

    invoke-direct {v1, p0}, Lcom/apkol/root/at;-><init>(Lcom/apkol/root/ao;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method static synthetic f(Lcom/apkol/root/ao;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/apkol/root/ao;->g()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    invoke-virtual {v0}, Lcom/apkol/utils/h/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/apkol/root/ao;->z:Landroid/app/Notification;

    iget-object v1, p0, Lcom/apkol/root/ao;->y:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 505
    iget-object v0, p0, Lcom/apkol/root/ao;->z:Landroid/app/Notification;

    iget-object v1, p0, Lcom/apkol/root/ao;->A:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 506
    iget-object v0, p0, Lcom/apkol/root/ao;->w:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/apkol/root/ao;->x:I

    iget-object v2, p0, Lcom/apkol/root/ao;->z:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 508
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/apkol/root/ao;->w:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/apkol/root/ao;->w:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/apkol/root/ao;->x:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 514
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs a(Lcom/apkol/utils/h/b;Landroid/os/Message;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 328
    .line 329
    const/4 v0, 0x0

    .line 330
    iget v1, p2, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 345
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :pswitch_0
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 333
    new-instance v1, Lcom/apkol/utils/e/b$c;

    invoke-direct {v1}, Lcom/apkol/utils/e/b$c;-><init>()V

    iput-object v1, p0, Lcom/apkol/root/ao;->v:Lcom/apkol/utils/e/b$c;

    .line 334
    iget-object v1, p0, Lcom/apkol/root/ao;->v:Lcom/apkol/utils/e/b$c;

    iget-object v2, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    iput-object v2, v1, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 335
    iget-object v1, p0, Lcom/apkol/root/ao;->v:Lcom/apkol/utils/e/b$c;

    iput-object v0, v1, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/apkol/root/ao;->v:Lcom/apkol/utils/e/b$c;

    iput-object p0, v0, Lcom/apkol/utils/e/b$c;->e:Lcom/apkol/utils/e/h$a;

    .line 337
    iget-object v0, p0, Lcom/apkol/root/ao;->v:Lcom/apkol/utils/e/b$c;

    invoke-static {v0}, Lcom/apkol/utils/e/b;->a(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    .line 338
    if-nez v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/apkol/root/ao;->f:Ljava/lang/String;

    const-string v2, "RequestDoing result =  null"

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 428
    const/16 v0, 0x1003

    if-ne p1, v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/apkol/root/ao;->s:Lcom/apkol/utils/h/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/apkol/utils/h/b;->a([Ljava/lang/Object;)V

    .line 431
    :cond_0
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_1

    .line 432
    invoke-direct {p0, p2}, Lcom/apkol/root/ao;->a(Ljava/lang/Object;)V

    .line 435
    :cond_1
    const/16 v0, 0x1005

    if-ne p1, v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/apkol/root/ar;

    invoke-direct {v1, p0}, Lcom/apkol/root/ar;-><init>(Lcom/apkol/root/ao;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 446
    :cond_2
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 403
    iget v0, p0, Lcom/apkol/root/ao;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/apkol/root/ao;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/apkol/root/ao;->dismiss()V

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/apkol/root/ao;->h()V

    .line 410
    if-eqz p2, :cond_1

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/apkol/root/b/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apkol/root/ao;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apkol/utils/i;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    check-cast p2, [B

    invoke-virtual {v1, v0, p2}, Lcom/apkol/utils/i;->a(Ljava/lang/String;[B)Z

    .line 418
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/apkol/utils/i;->a(Ljava/lang/String;)Z

    .line 420
    iget-object v1, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/apkol/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 423
    :cond_1
    return-void

    .line 415
    :cond_2
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/apkol/root/ao;->q:Ljava/lang/String;

    .line 416
    check-cast p2, [B

    .line 415
    invoke-virtual {v1, v2, v3, p2}, Lcom/apkol/utils/i;->a(Landroid/content/Context;Ljava/lang/String;[B)Z

    goto :goto_0
.end method

.method public varargs a(Landroid/os/Message;[Ljava/lang/Object;)V
    .locals 11

    .prologue
    const-wide/16 v9, 0x64

    const/4 v8, 0x0

    .line 351
    iget v0, p0, Lcom/apkol/root/ao;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    const v1, 0x7f050085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 353
    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 354
    iget-wide v2, p0, Lcom/apkol/root/ao;->u:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/apkol/root/ao;->u:J

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/apkol/root/ao;->u:J

    mul-long/2addr v4, v9

    iget-wide v6, p0, Lcom/apkol/root/ao;->t:J

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    const-string v1, "%"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    iget-object v2, p0, Lcom/apkol/root/ao;->n:Landroid/widget/ProgressBar;

    iget-wide v3, p0, Lcom/apkol/root/ao;->u:J

    mul-long/2addr v3, v9

    iget-wide v5, p0, Lcom/apkol/root/ao;->t:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 358
    iget-object v2, p0, Lcom/apkol/root/ao;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/apkol/root/ao;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 361
    const v3, 0x7f030047

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 360
    iput-object v1, p0, Lcom/apkol/root/ao;->y:Landroid/widget/RemoteViews;

    .line 362
    invoke-direct {p0, v0}, Lcom/apkol/root/ao;->b(I)V

    .line 363
    invoke-direct {p0}, Lcom/apkol/root/ao;->g()V

    .line 365
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 257
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/apkol/root/ao;->a(I)V

    goto :goto_0

    .line 260
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/apkol/root/ao;->a(I)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x7f09012a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    const v4, 0x7f050086

    const v3, 0x7f050081

    const/4 v6, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v1, 0x7f030046

    invoke-virtual {p0, v1}, Lcom/apkol/root/ao;->setContentView(I)V

    .line 125
    iget-object v1, p0, Lcom/apkol/root/ao;->f:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/apkol/root/ao;->a()V

    .line 127
    invoke-direct {p0}, Lcom/apkol/root/ao;->c()V

    .line 131
    iget v1, p0, Lcom/apkol/root/ao;->i:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    move-object v2, v0

    .line 175
    :goto_0
    iget-object v3, p0, Lcom/apkol/root/ao;->l:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/apkol/root/ao;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/apkol/root/ao;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget v0, p0, Lcom/apkol/root/ao;->i:I

    if-ne v0, v7, :cond_0

    .line 180
    iget-object v0, p0, Lcom/apkol/root/ao;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/apkol/root/ap;

    invoke-direct {v1, p0}, Lcom/apkol/root/ap;-><init>(Lcom/apkol/root/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 195
    :cond_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    const v1, 0x7f050087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    const v1, 0x7f05007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    const v1, 0x7f050080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    const v1, 0x7f050088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_3
    iget-object v0, p0, Lcom/apkol/root/ao;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/apkol/root/ao;->o:Ljava/lang/String;

    const-string v1, ";"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/ao;->o:Ljava/lang/String;

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    const v1, 0x7f050083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    iget-object v1, p0, Lcom/apkol/root/ao;->o:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    const v3, 0x7f050084

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    const v4, 0x7f050082

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v4, p0, Lcom/apkol/root/ao;->k:Landroid/widget/TextView;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    iget-object v4, p0, Lcom/apkol/root/ao;->m:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v4, p0, Lcom/apkol/root/ao;->m:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 162
    :pswitch_4
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    const v1, 0x7f050085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    iget-object v0, p0, Lcom/apkol/root/ao;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 167
    iget-object v0, p0, Lcom/apkol/root/ao;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/apkol/root/ao;->k:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    iget-object v0, p0, Lcom/apkol/root/ao;->h:Landroid/content/res/Resources;

    const v3, 0x7f050082

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-direct {p0}, Lcom/apkol/root/ao;->d()V

    goto/16 :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
