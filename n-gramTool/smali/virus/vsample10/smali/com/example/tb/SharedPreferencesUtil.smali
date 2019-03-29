.class public Lcom/example/tb/SharedPreferencesUtil;
.super Ljava/lang/Object;


# static fields
.field private static v:Lcom/example/tb/SharedPreferencesUtil;


# instance fields
.field private u:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/example/tb/SharedPreferencesUtil;->v:Lcom/example/tb/SharedPreferencesUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/tb/SharedPreferencesUtil;->u:Landroid/content/SharedPreferences;

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/example/tb/SharedPreferencesUtil;->u:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "yr_setting"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/example/tb/SharedPreferencesUtil;->u:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/example/tb/SharedPreferencesUtil;
    .locals 1

    sget-object v0, Lcom/example/tb/SharedPreferencesUtil;->v:Lcom/example/tb/SharedPreferencesUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/tb/SharedPreferencesUtil;

    invoke-direct {v0}, Lcom/example/tb/SharedPreferencesUtil;-><init>()V

    sput-object v0, Lcom/example/tb/SharedPreferencesUtil;->v:Lcom/example/tb/SharedPreferencesUtil;

    :cond_0
    sget-object v0, Lcom/example/tb/SharedPreferencesUtil;->v:Lcom/example/tb/SharedPreferencesUtil;

    return-object v0
.end method


# virtual methods
.method public addString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/example/tb/SharedPreferencesUtil;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/example/tb/SharedPreferencesUtil;->u:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/example/tb/SharedPreferencesUtil;->u:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/example/tb/SharedPreferencesUtil;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/example/tb/SharedPreferencesUtil;->u:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isContainString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/example/tb/SharedPreferencesUtil;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/example/tb/SharedPreferencesUtil;->u:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/example/tb/SharedPreferencesUtil;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/example/tb/SharedPreferencesUtil;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/example/tb/SharedPreferencesUtil;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/example/tb/SharedPreferencesUtil;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
