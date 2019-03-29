.class public Lcom/apkol/root/a/am;
.super Lcom/apkol/utils/c/a;
.source "TableDevice.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/apkol/utils/c/a;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "device_address"

    iput-object v0, p0, Lcom/apkol/root/a/am;->a:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 22
    const-string v0, "create table device_address(device_id integer not null, name text not null, value integer not null, primary key(device_id, name))"

    .line 26
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "device_address"

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
