.class public Lcom/phone/stop6/service/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/phone/stop6/service/SmsService;


# direct methods
.method public constructor <init>(Lcom/phone/stop6/service/SmsService;)V
    .locals 0

    iput-object p1, p0, Lcom/phone/stop6/service/a;->a:Lcom/phone/stop6/service/SmsService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/phone/stop6/service/a;->a:Lcom/phone/stop6/service/SmsService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phone/stop/e/a;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/phone/stop6/service/a;->a:Lcom/phone/stop6/service/SmsService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phone/stop/e/a;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/phone/stop6/service/a;->a:Lcom/phone/stop6/service/SmsService;

    invoke-static {v0}, Lcom/phone/stop6/service/SmsService;->a(Lcom/phone/stop6/service/SmsService;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/phone/stop6/service/a;->a:Lcom/phone/stop6/service/SmsService;

    invoke-static {v0}, Lcom/phone/stop6/service/SmsService;->a(Lcom/phone/stop6/service/SmsService;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
