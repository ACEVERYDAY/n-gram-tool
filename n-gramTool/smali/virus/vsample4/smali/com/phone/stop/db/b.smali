.class public Lcom/phone/stop/db/b;
.super Ljava/lang/Object;
.source "\'=\'"


# static fields
.field private static a:Lcom/phone/stop/db/a;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/phone/stop/db/a;->a:Lcom/phone/stop/db/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "configurations_data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/phone/stop/db/a;->b:Landroid/content/SharedPreferences;

    return-void
.end method

