.class public Lcom/apkol/utils/p;
.super Ljava/lang/Object;
.source "PreferenceUitl.java"


# static fields
.field private static a:Lcom/apkol/utils/p;


# instance fields
.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/apkol/utils/p;->b(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/apkol/utils/p;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/apkol/utils/p;->a:Lcom/apkol/utils/p;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/apkol/utils/p;

    invoke-direct {v0, p0}, Lcom/apkol/utils/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apkol/utils/p;->a:Lcom/apkol/utils/p;

    .line 24
    :cond_0
    sget-object v0, Lcom/apkol/utils/p;->a:Lcom/apkol/utils/p;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/apkol/utils/p;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/apkol/utils/p;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/apkol/utils/p;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/apkol/utils/p;->c:Landroid/content/SharedPreferences;

    .line 29
    iput-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    .line 30
    sput-object v0, Lcom/apkol/utils/p;->a:Lcom/apkol/utils/p;

    .line 31
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/apkol/utils/p;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/apkol/utils/p;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_0
    const-string v0, "pre_apkol"

    .line 55
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/utils/p;->c:Landroid/content/SharedPreferences;

    .line 56
    iget-object v0, p0, Lcom/apkol/utils/p;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;J)Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 82
    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object v0, p0, Lcom/apkol/utils/p;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
