.class public Lcom/qwapi/adclient/android/db/DBHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qwapi/adclient/android/db/DBHelper$DBOpenHelper;
    }
.end annotation


# static fields
.field private static final ACTION_TEXT:Ljava/lang/String; = "action_text"

.field private static final AD_COLS:[Ljava/lang/String;

.field private static final AD_ID:Ljava/lang/String; = "ad_id"

.field public static final AD_TABLE:Ljava/lang/String; = "qw_ad"

.field private static final AD_TEXT:Ljava/lang/String; = "ad_text"

.field private static final AD_TYPE:Ljava/lang/String; = "ad_type"

.field private static final AD_TYPE_QUERY_PART:Ljava/lang/String; = "ad_type = \'"

.field private static final BATCHID:Ljava/lang/String; = "batchid"

.field private static final CLASSNAME:Ljava/lang/String;

.field private static final CLICK_URL:Ljava/lang/String; = "click_url"

.field private static final CLOSE_PAREN:Ljava/lang/String; = ")"

.field private static final CONFIRMATION_PIXEL:Ljava/lang/String; = "confirmation_pixel"

.field private static final CONFIRM_IMAGE:Ljava/lang/String; = "confirm_1x1"

.field private static final DATA_HEIGHT:Ljava/lang/String; = "data_height"

.field private static final DATA_URL:Ljava/lang/String; = "data_url"

.field private static final DATA_WIDTH:Ljava/lang/String; = "data_width"

.field private static final DBID:Ljava/lang/String; = "dbid"

.field public static final DB_NAME:Ljava/lang/String; = "qw_ad.db"

.field public static final DB_VERSION:I = 0x1

.field private static final DELETE_AD_QUERY:Ljava/lang/String; = "dbid = ?"

.field private static final DELETE_EXPIRED_ADS_QUERY:Ljava/lang/String; = "expiration_ts < ?"

.field private static final DELETE_PIXEL_QUERY:Ljava/lang/String; = "dbid = ?"

.field private static final EXPIRATION_TS:Ljava/lang/String; = "expiration_ts"

.field private static final IMAGE_HEIGHT:Ljava/lang/String; = "image_height"

.field private static final IMAGE_TEXT:Ljava/lang/String; = "image_text"

.field private static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field private static final IMAGE_WIDTH:Ljava/lang/String; = "image_width"

.field private static final IMPRESSION_COUNT:Ljava/lang/String; = "impression_count"

.field private static final ISBOT:Ljava/lang/String; = "isbot"

.field private static final LAST_IMPRESSION_TS:Ljava/lang/String; = "last_impression_ts"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final OPEN_PAREN:Ljava/lang/String; = "("

.field private static final OR:Ljava/lang/String; = " OR "

.field private static final ORDER_BY:Ljava/lang/String; = "last_impression_ts desc"

.field private static final PIXEL:Ljava/lang/String; = "pixel"

.field private static final PIXEL_COLS:[Ljava/lang/String;

.field private static final PIXEL_COUNT:Ljava/lang/String; = "pixel_count"

.field public static final PIXEL_TABLE:Ljava/lang/String; = "qw_pixel"

.field private static final PLACEMENT:Ljava/lang/String; = "placement"

.field private static final SECTION:Ljava/lang/String; = "section"

.field private static final SELECT_AD_QUERY:Ljava/lang/String; = " AND placement = ? AND section = ? AND expiration_ts > ?"

.field private static final SELECT_EXPIRED_ADS_QUERY:Ljava/lang/String; = "expiration_ts < ?"

.field private static final SELECT_PIXEL_QUERY:Ljava/lang/String; = "dbid = ?"

.field private static final SINGLE_QUOTE:Ljava/lang/String; = "\'"

.field private static final TEXT_BODY:Ljava/lang/String; = "text_body"

.field private static final TEXT_HEADLINE:Ljava/lang/String; = "text_headline"

.field private static final UPDATE_AD_QUERY:Ljava/lang/String; = "dbid = ?"

.field private static final XHOSTED:Ljava/lang/String; = "xhosted"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final dbOpenHelper:Lcom/qwapi/adclient/android/db/DBHelper$DBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "dbid"

    const-class v0, Lcom/qwapi/adclient/android/db/DBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qwapi/adclient/android/db/DBHelper;->CLASSNAME:Ljava/lang/String;

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "dbid"

    aput-object v6, v0, v3

    const-string v1, "ad_id"

    aput-object v1, v0, v4

    const-string v1, "ad_type"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "placement"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "section"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "click_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "image_text"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "image_height"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "image_width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data_height"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data_width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "text_body"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "text_headline"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ad_text"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "action_text"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "isbot"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "xhosted"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "expiration_ts"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "batchid"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "impression_count"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "last_impression_ts"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "confirmation_pixel"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pixel_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/qwapi/adclient/android/db/DBHelper;->AD_COLS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "dbid"

    aput-object v6, v0, v3

    const-string v1, "pixel"

    aput-object v1, v0, v4

    sput-object v0, Lcom/qwapi/adclient/android/db/DBHelper;->PIXEL_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qwapi/adclient/android/db/DBHelper$DBOpenHelper;

    const-string v1, "qw_ad.db"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/qwapi/adclient/android/db/DBHelper$DBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/db/DBHelper;->dbOpenHelper:Lcom/qwapi/adclient/android/db/DBHelper$DBOpenHelper;

    invoke-direct {p0}, Lcom/qwapi/adclient/android/db/DBHelper;->establisDb()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/db/DBHelper;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method private establisDb()V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/db/DBHelper;->dbOpenHelper:Lcom/qwapi/adclient/android/db/DBHelper$DBOpenHelper;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/db/DBHelper$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method

.method public deleteAd(Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 5

    const/4 v3, 0x1

    const-string v4, "dbid = ?"

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getDbId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getTrackingPixels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "qw_pixel"

    const-string v3, "dbid = ?"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "qw_ad"

    const-string v3, "dbid = ?"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteExpiredAds()V
    .locals 13

    const/4 v2, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v0, "qw_ad"

    const-string v0, "expiration_ts < ?"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    :try_start_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "qw_ad"

    sget-object v3, Lcom/qwapi/adclient/android/db/DBHelper;->AD_COLS:[Ljava/lang/String;

    const-string v4, "expiration_ts < ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move v2, v11

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    iget-object v3, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "qw_pixel"

    const-string v7, "dbid = ?"

    invoke-virtual {v3, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "qw_ad"

    const-string v3, "expiration_ts < ?"

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v1, v10

    :goto_2
    :try_start_2
    const-string v2, "QuattroWirelessSDK/2.1"

    sget-object v3, Lcom/qwapi/adclient/android/db/DBHelper;->CLASSNAME:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_2
.end method

.method public getAd(Ljava/util/Collection;Lcom/qwapi/adclient/android/requestparams/Placement;Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/qwapi/adclient/android/requestparams/MediaType;",
            ">;",
            "Lcom/qwapi/adclient/android/requestparams/Placement;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qwapi/adclient/android/data/AdResponse;"
        }
    .end annotation

    const-string v4, "QuattroWirelessSDK/2.1"

    const-string v5, "getAd from database"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    const-string v7, " OR "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v7, "ad_type = \'"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/qwapi/adclient/android/requestparams/MediaType;->toNamedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v7, "("

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AND placement = ? AND section = ? AND expiration_ts > ?"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/qwapi/adclient/android/requestparams/Placement;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    aput-object v7, v9, v6

    const/4 v6, 0x1

    if-nez p3, :cond_3

    const-string v7, "none"

    :goto_3
    aput-object v7, v9, v6

    const/4 v6, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v6

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const/4 v5, 0x1

    const-string v6, "qw_ad"

    sget-object v7, Lcom/qwapi/adclient/android/db/DBHelper;->AD_COLS:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "last_impression_ts desc"

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    :try_start_1
    new-instance v19, Lcom/qwapi/adclient/android/data/Ad;

    invoke-direct/range {v19 .. v19}, Lcom/qwapi/adclient/android/data/Ad;-><init>()V

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_e

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setDbId(I)V

    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setId(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setAdType(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setClickUrl(Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setAdText(Ljava/lang/String;)V

    const/16 v4, 0x11

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setActionText(Ljava/lang/String;)V

    const/16 v4, 0x12

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setBot(Z)V

    const/16 v4, 0x15

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setImpressionCount(I)V

    const/16 v4, 0x16

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setLastServed(I)V

    const/16 v4, 0x13

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v19

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/qwapi/adclient/android/data/Ad;->setExpiry(J)V

    new-instance v4, Lcom/qwapi/adclient/android/data/Image;

    const/4 v5, 0x6

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x7

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/qwapi/adclient/android/data/Image;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setImage(Lcom/qwapi/adclient/android/data/Image;)V

    new-instance v4, Lcom/qwapi/adclient/android/data/Data;

    const/16 v5, 0xa

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v7, 0xc

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/qwapi/adclient/android/data/Data;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setData(Lcom/qwapi/adclient/android/data/Data;)V

    new-instance v4, Lcom/qwapi/adclient/android/data/Text;

    const/16 v5, 0xd

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xe

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/qwapi/adclient/android/data/Text;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setText(Lcom/qwapi/adclient/android/data/Text;)V

    const/16 v4, 0x17

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x18

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v5, Lcom/qwapi/adclient/android/data/AdResponse;

    invoke-static {}, Lcom/qwapi/adclient/android/data/Status;->getSuccess()Lcom/qwapi/adclient/android/data/Status;

    move-result-object v6

    const/16 v7, 0x14

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object/from16 v1, v19

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/qwapi/adclient/android/data/AdResponse;-><init>(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/data/Status;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v5

    :goto_5
    if-eqz v16, :cond_8

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    const/4 v4, 0x1

    :try_start_2
    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/qwapi/adclient/android/data/Ad;->getDbId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const/4 v5, 0x1

    const-string v6, "qw_pixel"

    sget-object v7, Lcom/qwapi/adclient/android/db/DBHelper;->PIXEL_COLS:[Ljava/lang/String;

    const-string v8, "dbid = ?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_5

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_2
    const-string v7, "none"

    goto/16 :goto_2

    :cond_3
    move-object/from16 v7, p3

    goto/16 :goto_3

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_5
    :try_start_4
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setTrackingPixels(Ljava/util/List;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_7
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v4, :cond_d

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object/from16 v4, v16

    :goto_8
    return-object v4

    :cond_7
    :try_start_5
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setTrackingPixels(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_8
    move-object v4, v15

    goto :goto_7

    :catch_0
    move-exception v4

    move-object/from16 v5, v16

    move-object v6, v15

    move-object v7, v14

    :goto_9
    :try_start_6
    const-string v8, "QuattroWirelessSDK/2.1"

    sget-object v9, Lcom/qwapi/adclient/android/db/DBHelper;->CLASSNAME:Ljava/lang/String;

    invoke-static {v8, v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v5

    goto :goto_8

    :catchall_0
    move-exception v4

    move-object v5, v15

    move-object v6, v14

    :goto_a
    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v4

    :catchall_1
    move-exception v4

    move-object v5, v15

    move-object v6, v14

    goto :goto_a

    :catchall_2
    move-exception v5

    move-object v6, v14

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v5, v20

    goto :goto_a

    :catchall_3
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    goto :goto_a

    :catch_1
    move-exception v4

    move-object/from16 v5, v16

    move-object v6, v15

    move-object v7, v14

    goto :goto_9

    :catch_2
    move-exception v4

    move-object/from16 v5, v16

    move-object v6, v15

    move-object v7, v14

    goto :goto_9

    :catch_3
    move-exception v5

    move-object v6, v4

    move-object v7, v14

    move-object v4, v5

    move-object/from16 v5, v16

    goto :goto_9

    :cond_c
    move-object v4, v5

    goto :goto_8

    :cond_d
    move-object/from16 v4, v16

    goto :goto_8

    :cond_e
    move/from16 v4, v18

    goto/16 :goto_5
.end method

.method public getAllAds()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qwapi/adclient/android/data/AdResponse;",
            ">;"
        }
    .end annotation

    const-string v4, "QuattroWirelessSDK/2.1"

    const-string v5, "getAd from database"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const/4 v5, 0x1

    const-string v6, "qw_ad"

    sget-object v7, Lcom/qwapi/adclient/android/db/DBHelper;->AD_COLS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "last_impression_ts desc"

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    new-instance v17, Lcom/qwapi/adclient/android/data/Ad;

    invoke-direct/range {v17 .. v17}, Lcom/qwapi/adclient/android/data/Ad;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setDbId(I)V

    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setId(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setAdType(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setClickUrl(Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setAdText(Ljava/lang/String;)V

    const/16 v4, 0x11

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setActionText(Ljava/lang/String;)V

    const/16 v4, 0x12

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setBot(Z)V

    const/16 v4, 0x15

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setImpressionCount(I)V

    const/16 v4, 0x16

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setLastServed(I)V

    const/16 v4, 0x13

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v17

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/qwapi/adclient/android/data/Ad;->setExpiry(J)V

    new-instance v4, Lcom/qwapi/adclient/android/data/Image;

    const/4 v5, 0x6

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x7

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/qwapi/adclient/android/data/Image;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setImage(Lcom/qwapi/adclient/android/data/Image;)V

    new-instance v4, Lcom/qwapi/adclient/android/data/Data;

    const/16 v5, 0xa

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v7, 0xc

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/qwapi/adclient/android/data/Data;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setData(Lcom/qwapi/adclient/android/data/Data;)V

    new-instance v4, Lcom/qwapi/adclient/android/data/Text;

    const/16 v5, 0xd

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xe

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/qwapi/adclient/android/data/Text;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setText(Lcom/qwapi/adclient/android/data/Text;)V

    const/16 v4, 0x17

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x18

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v19, Lcom/qwapi/adclient/android/data/AdResponse;

    invoke-static {}, Lcom/qwapi/adclient/android/data/Status;->getSuccess()Lcom/qwapi/adclient/android/data/Status;

    move-result-object v5

    const/16 v6, 0x14

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/qwapi/adclient/android/data/AdResponse;-><init>(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/data/Status;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/qwapi/adclient/android/data/Ad;->getDbId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const/4 v5, 0x1

    const-string v6, "qw_pixel"

    sget-object v7, Lcom/qwapi/adclient/android/db/DBHelper;->PIXEL_COLS:[Ljava/lang/String;

    const-string v8, "dbid = ?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_1

    const/4 v7, 0x1

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_1
    invoke-virtual/range {v17 .. v18}, Lcom/qwapi/adclient/android/data/Ad;->setTrackingPixels(Ljava/util/List;)V

    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v5

    if-nez v5, :cond_9

    :goto_4
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v4, v16

    :goto_5
    return-object v4

    :cond_4
    :try_start_4
    invoke-virtual/range {v17 .. v18}, Lcom/qwapi/adclient/android/data/Ad;->setTrackingPixels(Ljava/util/List;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v4, v15

    goto :goto_3

    :catch_0
    move-exception v4

    move-object v5, v15

    move-object v6, v14

    :goto_6
    :try_start_5
    const-string v7, "QuattroWirelessSDK/2.1"

    sget-object v8, Lcom/qwapi/adclient/android/db/DBHelper;->CLASSNAME:Ljava/lang/String;

    invoke-static {v7, v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :catchall_0
    move-exception v4

    move-object v5, v15

    move-object v6, v14

    :goto_7
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    :catchall_1
    move-exception v4

    move-object v5, v15

    move-object v6, v14

    goto :goto_7

    :catchall_2
    move-exception v5

    move-object v6, v14

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v5, v20

    goto :goto_7

    :catchall_3
    move-exception v4

    move-object v5, v15

    move-object v6, v14

    goto :goto_7

    :catchall_4
    move-exception v4

    goto :goto_7

    :catch_1
    move-exception v4

    move-object v5, v15

    move-object v6, v14

    goto :goto_6

    :catch_2
    move-exception v5

    move-object v6, v14

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v5, v20

    goto :goto_6

    :catch_3
    move-exception v4

    move-object v5, v15

    move-object v6, v14

    goto :goto_6

    :cond_9
    move-object v15, v4

    goto/16 :goto_0

    :cond_a
    move-object v4, v15

    goto :goto_4
.end method

.method public insertAd(Lcom/qwapi/adclient/android/data/Ad;Ljava/lang/String;Lcom/qwapi/adclient/android/requestparams/Placement;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x1

    const-string v0, "confirm_1x1"

    const-string v0, ""

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "ad_id"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ad_type"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getAdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "click_url"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ad_text"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getAdText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_text"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getActionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isbot"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->isBot()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "xhosted"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->isExternallyHosted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "impression_count"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImpressions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "batchid"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "placement"

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/qwapi/adclient/android/requestparams/Placement;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "section"

    if-eqz p4, :cond_3

    move-object v2, p4

    :goto_1
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "expiration_ts"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getExpires()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "last_impression_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImage()Lcom/qwapi/adclient/android/data/Image;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "image_url"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImage()Lcom/qwapi/adclient/android/data/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image_text"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImage()Lcom/qwapi/adclient/android/data/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Image;->getAltText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image_height"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImage()Lcom/qwapi/adclient/android/data/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Image;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "image_width"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImage()Lcom/qwapi/adclient/android/data/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Image;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getData()Lcom/qwapi/adclient/android/data/Data;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "data_url"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getData()Lcom/qwapi/adclient/android/data/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Data;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data_height"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getData()Lcom/qwapi/adclient/android/data/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Data;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "data_width"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getData()Lcom/qwapi/adclient/android/data/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Data;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_3
    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getText()Lcom/qwapi/adclient/android/data/Text;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "text_body"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getText()Lcom/qwapi/adclient/android/data/Text;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Text;->getBodyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text_headline"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getText()Lcom/qwapi/adclient/android/data/Text;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Text;->getHeadline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getTrackingPixels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "confirm_1x1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "confirmation_pixel"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "QuattroWirelessSDK/2.1"

    sget-object v2, Lcom/qwapi/adclient/android/db/DBHelper;->CLASSNAME:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string v2, "none"

    goto/16 :goto_0

    :cond_3
    const-string v2, "none"

    goto/16 :goto_1

    :cond_4
    const-string v0, "image_url"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image_text"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image_height"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "image_width"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "data_url"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data_height"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "data_width"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_6
    const-string v0, "text_body"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text_headline"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_8

    const-string v3, "confirmation_pixel"

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v0, "pixel_count"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "qw_ad"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "confirm_1x1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "dbid"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "pixel"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "qw_pixel"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method public updateAd(Lcom/qwapi/adclient/android/data/Ad;Ljava/lang/String;Lcom/qwapi/adclient/android/requestparams/Placement;Ljava/lang/String;)V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v9, "data_height"

    const-string v8, "confirmation_pixel"

    const-string v7, ""

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getDbId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "dbid"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getDbId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "ad_id"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ad_type"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getAdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "click_url"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getClickUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ad_text"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getAdText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_text"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getActionText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isbot"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->isBot()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "xhosted"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->isExternallyHosted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "impression_count"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImpressions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "batchid"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "placement"

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/qwapi/adclient/android/requestparams/Placement;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "section"

    if-eqz p4, :cond_3

    move-object v3, p4

    :goto_2
    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "expiration_ts"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getExpires()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "last_impression_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getTrackingPixels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "confirm_1x1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "confirmation_pixel"

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v3, "none"

    goto :goto_1

    :cond_3
    const-string v3, "none"

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    const-string v0, "confirmation_pixel"

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "pixel_count"

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImage()Lcom/qwapi/adclient/android/data/Image;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "image_url"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImage()Lcom/qwapi/adclient/android/data/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/data/Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image_text"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImage()Lcom/qwapi/adclient/android/data/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/data/Image;->getAltText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image_height"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImage()Lcom/qwapi/adclient/android/data/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/data/Image;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "image_width"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getImage()Lcom/qwapi/adclient/android/data/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/data/Image;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_4
    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getData()Lcom/qwapi/adclient/android/data/Data;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "data_url"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getData()Lcom/qwapi/adclient/android/data/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/data/Data;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data_height"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getData()Lcom/qwapi/adclient/android/data/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/Data;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "data_width"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getData()Lcom/qwapi/adclient/android/data/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/data/Data;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_5
    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getText()Lcom/qwapi/adclient/android/data/Text;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "text_body"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getText()Lcom/qwapi/adclient/android/data/Text;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/data/Text;->getBodyText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text_headline"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getText()Lcom/qwapi/adclient/android/data/Text;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/data/Text;->getHeadline()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lcom/qwapi/adclient/android/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "qw_ad"

    const-string v4, "dbid = ?"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v0, "image_url"

    const-string v3, ""

    invoke-virtual {v2, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image_text"

    const-string v3, ""

    invoke-virtual {v2, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image_height"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "image_width"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    :cond_7
    const-string v0, "data_url"

    const-string v3, ""

    invoke-virtual {v2, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data_height"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "data_width"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_8
    const-string v0, "text_body"

    const-string v3, ""

    invoke-virtual {v2, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text_headline"

    const-string v3, ""

    invoke-virtual {v2, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method
