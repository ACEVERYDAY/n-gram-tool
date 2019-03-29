.class public Lcom/apkol/root/a/an;
.super Lcom/apkol/utils/c/a;
.source "TableSupport.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/apkol/utils/c/a;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "supported_devices"

    iput-object v0, p0, Lcom/apkol/root/a/an;->a:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 22
    const-string v0, "create table supported_devices(device_id integer primary key asc, device text not null, build_id text not null, check_property_name text, check_property_value text, unique (device, build_id, check_property_name, check_property_value))"

    .line 30
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "supported_devices"

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
