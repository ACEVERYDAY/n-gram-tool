.class public Lcom/apkol/utils/h/b;
.super Landroid/os/AsyncTask;
.source "RequestAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/apkol/utils/h/a;

.field private b:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/apkol/utils/h/a;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/apkol/utils/h/b;->a:Lcom/apkol/utils/h/a;

    .line 20
    iput-object p2, p0, Lcom/apkol/utils/h/b;->b:Landroid/os/Message;

    .line 21
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/apkol/utils/h/b;->publishProgress([Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apkol/utils/h/b;->a:Lcom/apkol/utils/h/a;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/apkol/utils/h/b;->a:Lcom/apkol/utils/h/a;

    iget-object v1, p0, Lcom/apkol/utils/h/b;->b:Landroid/os/Message;

    invoke-interface {v0, p0, v1, p1}, Lcom/apkol/utils/h/a;->a(Lcom/apkol/utils/h/b;Landroid/os/Message;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/apkol/utils/h/b;->a:Lcom/apkol/utils/h/a;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/apkol/utils/h/b;->a:Lcom/apkol/utils/h/a;

    iget-object v1, p0, Lcom/apkol/utils/h/b;->b:Landroid/os/Message;

    invoke-interface {v0, v1, p1}, Lcom/apkol/utils/h/a;->a(Landroid/os/Message;Ljava/lang/Object;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 32
    iget-object v0, p0, Lcom/apkol/utils/h/b;->a:Lcom/apkol/utils/h/a;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/apkol/utils/h/b;->a:Lcom/apkol/utils/h/a;

    iget-object v1, p0, Lcom/apkol/utils/h/b;->b:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/apkol/utils/h/a;->a(Landroid/os/Message;)V

    .line 35
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/apkol/utils/h/b;->a:Lcom/apkol/utils/h/a;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/apkol/utils/h/b;->a:Lcom/apkol/utils/h/a;

    iget-object v1, p0, Lcom/apkol/utils/h/b;->b:Landroid/os/Message;

    invoke-interface {v0, v1, p1}, Lcom/apkol/utils/h/a;->a(Landroid/os/Message;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method
