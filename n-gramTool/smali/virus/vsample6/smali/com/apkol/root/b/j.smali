.class public Lcom/apkol/root/b/j;
.super Ljava/lang/Object;
.source "UpgradeChecker.java"


# static fields
.field static g:Lcom/apkol/root/b/j;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/apkol/root/b/j;->g:Lcom/apkol/root/b/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-class v0, Lcom/apkol/root/b/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/b/j;->h:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->a:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->b:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->c:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->d:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->e:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->f:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->i:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static a()Lcom/apkol/root/b/j;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/apkol/root/b/j;->g:Lcom/apkol/root/b/j;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/apkol/root/b/j;

    invoke-direct {v0}, Lcom/apkol/root/b/j;-><init>()V

    sput-object v0, Lcom/apkol/root/b/j;->g:Lcom/apkol/root/b/j;

    .line 38
    :cond_0
    sget-object v0, Lcom/apkol/root/b/j;->g:Lcom/apkol/root/b/j;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    const-string v0, ""

    .line 54
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const-string v2, "message"

    invoke-direct {p0, v1, v2}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/apkol/root/b/j;->i:Ljava/lang/String;

    .line 77
    :cond_0
    const-string v2, "rect"

    invoke-direct {p0, v1, v2}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/apkol/root/b/j;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpgradeValidate_MoblieAssistant json fail="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "message"

    invoke-direct {p0, v1, v4}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return v0

    .line 83
    :cond_1
    const-string v2, "ResponseCode"

    invoke-direct {p0, v1, v2}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DIFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/apkol/root/b/j;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpgradeValidate_MoblieAssistant json not need update="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "message"

    invoke-direct {p0, v1, v4}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 90
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/apkol/root/b/j;->b()V

    .line 91
    invoke-virtual {p0, v1}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v1

    .line 93
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->a:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->b:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->c:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->d:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->e:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/j;->f:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "Url"

    invoke-direct {p0, p1, v0}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/b/j;->a:Ljava/lang/String;

    .line 64
    const-string v0, "ResponseCode"

    invoke-direct {p0, p1, v0}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/b/j;->b:Ljava/lang/String;

    .line 65
    const-string v0, "Version"

    invoke-direct {p0, p1, v0}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/b/j;->c:Ljava/lang/String;

    .line 66
    const-string v0, "Description"

    invoke-direct {p0, p1, v0}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/b/j;->d:Ljava/lang/String;

    .line 67
    const-string v0, "UpdateTime"

    invoke-direct {p0, p1, v0}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/b/j;->e:Ljava/lang/String;

    .line 68
    const-string v0, "MD5"

    invoke-direct {p0, p1, v0}, Lcom/apkol/root/b/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/b/j;->f:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    .line 106
    :try_start_0
    new-instance v2, Lcom/apkol/root/b/a;

    invoke-direct {v2}, Lcom/apkol/root/b/a;-><init>()V

    invoke-virtual {v2, p2, p3}, Lcom/apkol/root/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-direct {p0, v2}, Lcom/apkol/root/b/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 111
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 112
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 118
    const/4 v3, 0x6

    iput v3, v0, Landroid/os/Message;->what:I

    .line 119
    const-string v3, "ResponseCode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_2
    move v0, v1

    .line 139
    goto :goto_0

    .line 122
    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpgradeChecker [strDownUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apkol/root/b/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/apkol/root/b/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strLastVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/root/b/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/apkol/root/b/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strUpdateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/root/b/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strMd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/apkol/root/b/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/root/b/j;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
