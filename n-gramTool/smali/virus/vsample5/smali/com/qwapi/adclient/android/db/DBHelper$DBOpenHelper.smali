.class Lcom/qwapi/adclient/android/db/DBHelper$DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qwapi/adclient/android/db/DBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBOpenHelper"
.end annotation


# static fields
.field private static final AD_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE qw_ad (dbid INTEGER PRIMARY KEY, ad_id TEXT NOT NULL, ad_type TEXT NOT NULL, placement TEXT NOT NULL, section TEXT NOT NULL, click_url TEXT NOT NULL, image_url TEXT, image_text TEXT, image_height INTEGER, image_width INTEGER, data_url TEXT, data_height INTEGER, data_width INTEGER, text_body TEXT, text_headline TEXT, ad_text TEXT, action_text TEXT, isbot INTEGER, xhosted INTEGER, expiration_ts REAL NOT NULL, batchid TEXT NOT NULL, impression_count INTEGER, last_impression_ts REAL NOT NULL, confirmation_pixel TEXT NOT NULL, pixel_count INTEGER)"

.field private static final DROP_TABLE_QUERY:Ljava/lang/String; = "DROP TABLE IF EXISTS "

.field private static final PIXEL_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE qw_pixel (dbid INTEGER, pixel TEXT)"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "qw_ad.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v2, "QuattroWirelessSDK/2.1"

    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v0, "Creating Database"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "CREATE TABLE qw_ad (dbid INTEGER PRIMARY KEY, ad_id TEXT NOT NULL, ad_type TEXT NOT NULL, placement TEXT NOT NULL, section TEXT NOT NULL, click_url TEXT NOT NULL, image_url TEXT, image_text TEXT, image_height INTEGER, image_width INTEGER, data_url TEXT, data_height INTEGER, data_width INTEGER, text_body TEXT, text_headline TEXT, ad_text TEXT, action_text TEXT, isbot INTEGER, xhosted INTEGER, expiration_ts REAL NOT NULL, batchid TEXT NOT NULL, impression_count INTEGER, last_impression_ts REAL NOT NULL, confirmation_pixel TEXT NOT NULL, pixel_count INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE qw_pixel (dbid INTEGER, pixel TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QuattroWirelessSDK/2.1"

    invoke-static {}, Lcom/qwapi/adclient/android/db/DBHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v1, "Opening Database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v1, "upgrading database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS qw_pixel"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS qw_ad"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/qwapi/adclient/android/db/DBHelper$DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
