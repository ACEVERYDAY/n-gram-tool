.class public Ldl/hp/xx/fm/a/L;
.super Ljava/lang/Object;
.source "c"


# static fields
.field static B:Ldl/hp/xx/fm/b/a; = null

.field public static final b:Landroid/net/Uri;

.field public static final c:Ljava/lang/String; = "10.0.0.172"

.field public static final d:Landroid/net/Uri;

.field public static final g:Ljava/lang/String; = "10.0.0.200"

.field public static final k:I = 0x50

.field public static final pDvqLhYe:I = 0x50


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ldl/hp/xx/fm/b/a;

    const-class v1, Ldl/hp/xx/fm/a/L;

    invoke-direct {v0, v1}, Ldl/hp/xx/fm/b/a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Ldl/hp/xx/fm/a/L;->B:Ldl/hp/xx/fm/b/a;

    .line 70
    const-string v0, "+T&O-U<\u0001g\u0014<^$^8S\'U1\u0014+Z:I!^:H"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldl/hp/xx/fm/a/L;->d:Landroid/net/Uri;

    .line 94
    const-string v0, "+T&O-U<\u0001g\u0014<^$^8S\'U1\u0014+Z:I!^:HgK:^.^:Z8U"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldl/hp/xx/fm/a/L;->b:Landroid/net/Uri;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Landroid/content/Context;)Z
    .locals 3
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 246
    if-nez p0, :cond_0

    move v0, v1

    .line 162
    :goto_0
    return v0

    .line 137
    :cond_0
    const-string v0, "+T&U-X<R>R<B"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 37
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 154
    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0008/L)K"

    invoke-static {v1}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static E(Landroid/content/Context;)Z
    .locals 3
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 141
    if-nez p0, :cond_0

    move v0, v1

    .line 227
    :goto_0
    return v0

    .line 82
    :cond_0
    const-string v0, "+T&U-X<R>R<B"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 229
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 168
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=U!L)K"

    invoke-static {v1}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static F(Landroid/content/Context;)Z
    .locals 9
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    .line 224
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 237
    const-string v3, "X=I:^&O"

    const-string v4, "8T:O"

    const-string v5, "K:T0B"

    const-string v6, "Z8U"

    const-string v7, "&Z%^"

    invoke-static {v7}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "X%L)K"

    invoke-static {v8}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {v6}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "X%L)K"

    invoke-static {v7}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {v5}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "10.0.0.172"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v4}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x50

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-static {v3}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Ldl/hp/xx/fm/a/L;->d:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    .line 201
    :cond_0
    sget-object v2, Ldl/hp/xx/fm/a/L;->B:Ldl/hp/xx/fm/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ")_,x%l)K\tK&\u0013a\u001b;N+X-H;\u0006"

    invoke-static {v4}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldl/hp/xx/fm/b/a;->J(Ljava/lang/String;)V

    .line 74
    return v0
.end method

.method public static J(Landroid/content/Context;)Z
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 377
    const-string v0, "+T&U-X<R>R<B"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 390
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static J(Landroid/content/Context;J)Z
    .locals 9
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 426
    .line 439
    const-string v0, "+T&U-X<R>R<B"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 452
    if-nez v0, :cond_0

    .line 372
    :goto_0
    return v1

    .line 382
    :cond_0
    :try_start_0
    const-class v2, Landroid/net/ConnectivityManager;

    const-string v3, ";^<v\'Y!W-\u007f)O)~&Z*W-_\u000f^%R&R"

    invoke-static {v3}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 303
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 364
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 303
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 413
    :goto_1
    sget-object v2, Ldl/hp/xx/fm/a/L;->B:Ldl/hp/xx/fm/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ";^<v\u001cp\u000fk\u001ah\rU)Y$^,\u0013a\u001b;R%r,\u0006"

    invoke-static {v4}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u0017;N+X-H;\u0006"

    invoke-static {v3}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldl/hp/xx/fm/b/a;->J(Ljava/lang/String;)V

    move v1, v0

    .line 372
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 276
    sget-object v2, Ldl/hp/xx/fm/a/L;->B:Ldl/hp/xx/fm/b/a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ldl/hp/xx/fm/b/a;->pDvqLhYe(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 149
    .line 14
    const-string v0, "+T&U-X<R>R<B"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 167
    if-nez v0, :cond_0

    move v0, v1

    .line 254
    :goto_0
    return v0

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 153
    const/4 v1, 0x0

    .line 233
    :try_start_0
    const-string v3, "/^<v\'Y!W-\u007f)O)~&Z*W-_"

    invoke-static {v3}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 144
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 139
    .line 64
    if-nez p0, :cond_0

    .line 251
    :goto_0
    return v1

    .line 23
    :cond_0
    const-string v0, "+T&U-X<R>R<B"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 98
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "L)K"

    invoke-static {v2}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 150
    :goto_1
    sget-object v2, Ldl/hp/xx/fm/a/L;->B:Ldl/hp/xx/fm/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!H\u001fZ8\u0013a\u001b!H\u001fZ8\u0006"

    invoke-static {v4}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldl/hp/xx/fm/b/a;->J(Ljava/lang/String;)V

    move v1, v0

    .line 91
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 130
    .line 28
    invoke-static {p0}, Ldl/hp/xx/fm/a/L;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-static {p0}, Ldl/hp/xx/fm/a/L;->F(Landroid/content/Context;)Z

    .line 97
    :cond_0
    invoke-static {p0}, Ldl/hp/xx/fm/a/L;->pDvqLhYe(Landroid/content/Context;)I

    move-result v0

    .line 96
    if-lez v0, :cond_2

    .line 142
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 420
    const-string v3, ")K&d!_"

    invoke-static {v3}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Ldl/hp/xx/fm/a/L;->b:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 334
    const/4 v0, 0x1

    .line 320
    :goto_0
    sget-object v2, Ldl/hp/xx/fm/a/L;->B:Ldl/hp/xx/fm/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "H-O\u000bV\u001fZ8o\'\u007f-])N$O\tK&\u0013a\u001b;N+X-H;\u0006"

    invoke-static {v4}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldl/hp/xx/fm/b/a;->J(Ljava/lang/String;)V

    .line 437
    return v0

    :cond_1
    move v0, v1

    .line 436
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 103
    if-eqz p0, :cond_0

    .line 36
    const-string v0, "+T&U-X<R>R<B"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 261
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X<L)K"

    invoke-static {v1}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 3
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    .line 257
    if-eqz p0, :cond_1

    .line 213
    const-string v0, "+T&U-X<R>R<B"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 0
    const-string v2, "X%L)K"

    invoke-static {v2}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u0008/L)K"

    invoke-static {v2}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "=U!L)K"

    invoke-static {v2}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return v1

    .line 42
    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 9
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 7
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 117
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldl/hp/xx/fm/a/L;->d:Landroid/net/Uri;

    const-string v2, "Z8UhW!P-\u001bo\u001e+V?Z8\u001eo\u001b)U,\u001b8I\'C1\u001bu\u001bo\nx\u0015x\u0015x\u0015y\u000cz\u001c"

    invoke-static {v2}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 86
    :cond_0
    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_1
    sget-object v0, Ldl/hp/xx/fm/a/L;->B:Ldl/hp/xx/fm/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "S)H\u000bV\u001fZ8z8U`\u0012hI-H=W<\u0006"

    invoke-static {v3}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldl/hp/xx/fm/b/a;->J(Ljava/lang/String;)V

    .line 170
    return v6
.end method

.method public static pDvqLhYe(Landroid/content/Context;)I
    .locals 8
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 30
    const/4 v6, -0x1

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldl/hp/xx/fm/a/L;->d:Landroid/net/Uri;

    const-string v2, "Z8UhW!P-\u001bo\u001e+V?Z8\u001eo\u001b)U,\u001b8I\'C1\u001bu\u001bo\nx\u0015x\u0015x\u0015y\u000cz\u001c"

    invoke-static {v2}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "d!_"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 166
    sget-object v2, Ldl/hp/xx/fm/a/L;->B:Ldl/hp/xx/fm/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/^<x%l)K\tK&r,\u0013a\u001b!U,^0\u0006"

    invoke-static {v4}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldl/hp/xx/fm/b/a;->J(Ljava/lang/String;)V

    .line 181
    if-ltz v0, :cond_1

    .line 105
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 145
    :goto_0
    if-eqz v1, :cond_0

    .line 18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_0
    sget-object v1, Ldl/hp/xx/fm/a/L;->B:Ldl/hp/xx/fm/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\-O\u000bV\u001fZ8z8U\u0001_`\u0012hR,\u0006"

    invoke-static {v3}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldl/hp/xx/fm/b/a;->J(Ljava/lang/String;)V

    .line 69
    return v0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public static pDvqLhYe(Landroid/content/Context;)Z
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 242
    const-string v0, "+T&U-X<R>R<B"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static pDvqLhYe(Landroid/content/Context;J)Z
    .locals 9
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # J

    .prologue
    const/4 v2, 0x0

    .line 25
    .line 77
    const-string v0, "+T&U-X<R>R<B"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 172
    if-nez v0, :cond_0

    move v0, v2

    .line 203
    :goto_0
    return v0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 93
    :try_start_0
    const-class v3, Landroid/net/ConnectivityManager;

    const-string v4, "/^<v\'Y!W-\u007f)O)~&Z*W-_\u000f^%R&R"

    invoke-static {v4}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 188
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 220
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_1
    sget-object v1, Ldl/hp/xx/fm/a/L;->B:Ldl/hp/xx/fm/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X ^+P\u0005o\u0003|\u0018i\u001b~&Z*W-\u0013a\u001b;R%r,\u0006"

    invoke-static {v4}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dR;t8^&\u0006"

    invoke-static {v3}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldl/hp/xx/fm/b/a;->J(Ljava/lang/String;)V

    .line 132
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public static pDvqLhYe(Landroid/content/Context;Z)Z
    .locals 7
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 308
    const-string v0, "+T&U-X<R>R<B"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 297
    if-nez v0, :cond_0

    move v0, v1

    .line 518
    :goto_0
    return v0

    .line 346
    :cond_0
    invoke-static {p0}, Ldl/hp/xx/fm/a/L;->a(Landroid/content/Context;)Z

    move-result v3

    .line 337
    if-eqz p1, :cond_2

    move v4, v1

    .line 450
    :goto_1
    if-ne v3, v4, :cond_1

    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 492
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 440
    :try_start_0
    const-string v5, ";^<v\'Y!W-\u007f)O)~&Z*W-_"

    invoke-static {v5}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 446
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 440
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v2

    .line 518
    goto :goto_0

    :cond_2
    move v4, v2

    .line 450
    goto :goto_1

    .line 472
    :catch_0
    move-exception v0

    .line 296
    sget-object v3, Ldl/hp/xx/fm/a/L;->B:Ldl/hp/xx/fm/b/a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {v3, v4, v2}, Ldl/hp/xx/fm/b/a;->pDvqLhYe(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 325
    goto :goto_0
.end method

.method public static pDvqLhYe(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x50

    .line 208
    const/4 v2, 0x0

    .line 113
    invoke-static {p0}, Ldl/hp/xx/fm/a/L;->k(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    const-string v2, "10.0.0.172"

    .line 127
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    return-object v3

    .line 24
    :cond_0
    invoke-static {p0}, Ldl/hp/xx/fm/a/L;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    const-string v2, "10.0.0.200"

    goto :goto_0

    .line 212
    :cond_1
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 238
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 53
    const-string v4, "10.0.0.172"

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    const-string v2, "10.0.0.172"

    goto :goto_0

    .line 16
    :cond_2
    const-string v4, "10.0.0.200"

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    const-string v2, "10.0.0.200"

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
