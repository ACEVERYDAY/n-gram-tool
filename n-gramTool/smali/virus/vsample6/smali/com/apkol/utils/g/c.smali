.class public Lcom/apkol/utils/g/c;
.super Ljava/lang/Object;
.source "SdcardManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field public static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/utils/g/b;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/apkol/utils/g/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/utils/g/c;->f:Ljava/lang/String;

    .line 25
    const-string v0, "/data/local/tmp"

    sput-object v0, Lcom/apkol/utils/g/c;->d:Ljava/lang/String;

    .line 26
    const-string v0, "/data/local/tmp/busybox"

    sput-object v0, Lcom/apkol/utils/g/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/apkol/utils/g/c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apkol/utils/g/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p0, :cond_0

    .line 460
    sget-object v0, Lcom/apkol/utils/g/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 533
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 535
    new-array v2, v0, [B

    .line 536
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 537
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 544
    if-eqz v1, :cond_0

    .line 545
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 551
    :cond_0
    :goto_0
    return-object v0

    .line 546
    :catch_0
    move-exception v1

    .line 548
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 539
    :catch_1
    move-exception v1

    .line 544
    :goto_1
    if-eqz v0, :cond_1

    .line 545
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 551
    :cond_1
    :goto_2
    const-string v0, ""

    goto :goto_0

    .line 546
    :catch_2
    move-exception v0

    .line 548
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 542
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 544
    :goto_3
    if-eqz v1, :cond_2

    .line 545
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 550
    :cond_2
    :goto_4
    throw v0

    .line 546
    :catch_3
    move-exception v1

    .line 548
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 542
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 539
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static a()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    const-string v0, "cat"

    const-string v1, "/etc/vold.conf"

    const-string v2, "/"

    invoke-static {v0, v1, v2}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const-string v0, ""

    .line 56
    const-string v1, "cat"

    const-string v2, "/proc/partitions"

    const-string v3, "/"

    invoke-static {v1, v2, v3}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "partitions:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 59
    const-string v5, ""

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const-string v0, "\n+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 65
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 66
    const/4 v0, 0x0

    :goto_0
    array-length v1, v8

    if-lt v0, v1, :cond_9

    .line 79
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    :cond_0
    move-object v2, v5

    .line 110
    :cond_1
    const/4 v0, 0x0

    .line 112
    const-string v1, "getprop"

    const-string v3, "ro.product.model"

    const-string v4, "/"

    invoke-static {v1, v3, v4}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_2

    const-string v3, "U9510"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 114
    :cond_2
    const-string v3, "C8813Q"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 116
    :cond_3
    const/4 v0, 0x1

    .line 117
    const-string v1, "cat"

    const-string v3, "/etc/internal_sd.fstab"

    const-string v4, "/"

    invoke-static {v1, v3, v4}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_4

    const-string v3, "No such file or directory"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    const/4 v0, 0x0

    .line 120
    const-string v1, "cat"

    const-string v3, "/etc/vold.fstab"

    const-string v4, "/"

    invoke-static {v1, v3, v4}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-static {v1}, Lcom/apkol/utils/g/c;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 139
    if-eqz v0, :cond_5

    .line 141
    :cond_5
    const-string v0, "\n+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 142
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    array-length v0, v7

    if-lt v1, v0, :cond_10

    .line 196
    :cond_6
    const/4 v3, 0x0

    .line 199
    const/4 v1, 0x0

    .line 200
    const/4 v0, 0x0

    move v4, v3

    move v3, v1

    move v1, v0

    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_18

    .line 210
    if-nez v4, :cond_7

    .line 211
    const-string v0, "ls"

    const-string v1, "/sdcard"

    const-string v4, "/"

    invoke-static {v0, v1, v4}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_7

    const-string v1, "No such file or directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 213
    const-string v1, "Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 214
    new-instance v0, Lcom/apkol/utils/g/b;

    invoke-direct {v0}, Lcom/apkol/utils/g/b;-><init>()V

    .line 215
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apkol/utils/g/b;->e:Z

    .line 216
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/apkol/utils/g/b;->b:J

    .line 217
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/apkol/utils/g/b;->c:J

    .line 218
    if-eqz v3, :cond_1c

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/apkol/utils/g/b;->a:Z

    .line 222
    :goto_5
    const-string v1, "/sdcard"

    iput-object v1, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    .line 223
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_7
    const/4 v1, 0x0

    .line 230
    const/4 v0, 0x0

    move v3, v1

    move v1, v0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1d

    .line 236
    if-nez v3, :cond_8

    .line 237
    const-string v0, "ls"

    const-string v1, "/emmc"

    const-string v3, "/"

    invoke-static {v0, v1, v3}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_8

    const-string v1, "No such file or directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 239
    const-string v1, "Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 240
    new-instance v0, Lcom/apkol/utils/g/b;

    invoke-direct {v0}, Lcom/apkol/utils/g/b;-><init>()V

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apkol/utils/g/b;->e:Z

    .line 242
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/apkol/utils/g/b;->b:J

    .line 243
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/apkol/utils/g/b;->c:J

    .line 244
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/apkol/utils/g/b;->a:Z

    .line 245
    const-string v1, "/emmc"

    iput-object v1, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    .line 246
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_8
    sget-object v7, Lcom/apkol/utils/g/c;->e:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " df"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ",dfresult:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    const/4 v0, 0x0

    move-object v3, v1

    move v1, v0

    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1f

    .line 302
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 303
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 304
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 307
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_25

    .line 314
    const/4 v4, 0x0

    .line 315
    const/4 v1, 0x0

    .line 316
    const/4 v0, 0x0

    move v5, v4

    move v4, v1

    move v1, v0

    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_27

    .line 330
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2a

    .line 342
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2d

    .line 361
    sput-object v3, Lcom/apkol/utils/g/c;->c:Ljava/lang/String;

    .line 362
    sput-object v8, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    .line 363
    invoke-static {}, Lcom/apkol/utils/g/c;->i()V

    .line 364
    return-void

    .line 69
    :cond_9
    aget-object v1, v8, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    .line 71
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "179"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    .line 72
    const/4 v2, 0x3

    aget-object v2, v1, v2

    const-string v3, "mmcblk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 73
    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 81
    :cond_b
    const/4 v4, 0x0

    .line 82
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    const-string v3, ""

    .line 84
    const/4 v2, 0x0

    move v13, v2

    move-object v2, v3

    move v3, v4

    move v4, v13

    :goto_c
    array-length v10, v8

    if-lt v4, v10, :cond_c

    .line 97
    const/4 v0, 0x1

    if-eq v3, v0, :cond_1

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 87
    :cond_c
    aget-object v10, v8, v4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 88
    array-length v11, v10

    const/4 v12, 0x4

    if-ne v11, v12, :cond_d

    .line 89
    const/4 v11, 0x0

    aget-object v11, v10, v11

    const-string v12, "179"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 90
    const/4 v11, 0x3

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x7

    if-le v11, v12, :cond_d

    .line 91
    const/4 v11, 0x3

    aget-object v11, v10, v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    const/4 v2, 0x3

    aget-object v2, v10, v2

    .line 84
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 123
    :cond_e
    const-string v1, "cat"

    const-string v3, "/etc/vold.fstab"

    const-string v4, "/"

    invoke-static {v1, v3, v4}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_f

    const-string v3, "No such file or directory"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 125
    const/4 v0, 0x1

    .line 127
    const-string v1, "cat"

    const-string v3, "/etc/internal_sd.fstab"

    const-string v4, "/"

    invoke-static {v1, v3, v4}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_f
    if-eqz v1, :cond_4

    const-string v3, "No such file or directory"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 130
    const/4 v0, 0x1

    .line 132
    const-string v1, "cat"

    const-string v3, "/etc/external_sd.fstab"

    const-string v4, "/"

    invoke-static {v1, v3, v4}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 143
    :cond_10
    aget-object v0, v7, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v3, "dev_mount"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_11

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\s+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    array-length v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_11

    .line 149
    array-length v3, v0

    const/4 v4, 0x4

    if-le v3, v4, :cond_12

    .line 150
    const/4 v3, 0x4

    aget-object v3, v0, v3

    const-string v4, "mmc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 142
    :cond_11
    :goto_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 155
    :cond_12
    new-instance v8, Lcom/apkol/utils/g/b;

    invoke-direct {v8}, Lcom/apkol/utils/g/b;-><init>()V

    .line 156
    const/4 v3, 0x0

    iput-boolean v3, v8, Lcom/apkol/utils/g/b;->e:Z

    .line 157
    const-wide/16 v3, 0x0

    iput-wide v3, v8, Lcom/apkol/utils/g/b;->b:J

    .line 158
    const-wide/16 v3, 0x0

    iput-wide v3, v8, Lcom/apkol/utils/g/b;->c:J

    .line 159
    const/4 v3, 0x3

    aget-object v3, v0, v3

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 160
    const/4 v3, 0x0

    iput-boolean v3, v8, Lcom/apkol/utils/g/b;->a:Z

    .line 170
    :goto_e
    const/4 v3, 0x2

    aget-object v0, v0, v3

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v9, v0, v3

    .line 172
    iput-object v9, v8, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    .line 177
    const/4 v3, 0x0

    .line 178
    const/4 v0, 0x0

    move v4, v3

    move v3, v0

    :goto_f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_15

    .line 187
    if-nez v4, :cond_11

    .line 188
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 163
    :cond_13
    const/4 v3, 0x3

    aget-object v3, v0, v3

    const-string v4, "[0-9]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 164
    const/4 v3, 0x3

    aget-object v3, v0, v3

    iput-object v3, v8, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    .line 168
    :goto_10
    const/4 v3, 0x1

    iput-boolean v3, v8, Lcom/apkol/utils/g/b;->a:Z

    goto :goto_e

    .line 166
    :cond_14
    const-string v3, ""

    iput-object v3, v8, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    goto :goto_10

    .line 179
    :cond_15
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 181
    iget-object v0, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 182
    iget-boolean v0, v8, Lcom/apkol/utils/g/b;->a:Z

    if-eqz v0, :cond_16

    .line 183
    invoke-virtual {v6, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_16
    const/4 v4, 0x1

    .line 178
    :cond_17
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f

    .line 201
    :cond_18
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 202
    iget-boolean v7, v0, Lcom/apkol/utils/g/b;->a:Z

    if-eqz v7, :cond_19

    .line 204
    :cond_19
    iget-boolean v7, v0, Lcom/apkol/utils/g/b;->a:Z

    if-nez v7, :cond_1a

    .line 205
    const/4 v3, 0x1

    .line 206
    :cond_1a
    iget-object v0, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v7, "/sdcard"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 207
    const/4 v4, 0x1

    .line 200
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    .line 221
    :cond_1c
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apkol/utils/g/b;->a:Z

    goto/16 :goto_5

    .line 231
    :cond_1d
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 232
    iget-object v0, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/emmc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 233
    const/4 v3, 0x1

    .line 230
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_6

    .line 267
    :cond_1f
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " df "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 269
    iget-object v5, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v4}, Lcom/apkol/utils/g/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    if-eqz v4, :cond_24

    .line 274
    const-string v5, "can\'t find mount point"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 275
    const-string v5, "\\s+"

    const-string v8, " "

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 276
    const-string v5, "Mounted on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 277
    const/4 v4, 0x0

    :goto_11
    array-length v8, v5

    if-lt v4, v8, :cond_20

    .line 299
    :goto_12
    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 266
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_7

    .line 278
    :cond_20
    aget-object v8, v5, v4

    .line 279
    const-string v9, "Filesystem"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 277
    :cond_21
    :goto_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 282
    :cond_22
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 283
    array-length v9, v8

    const/4 v10, 0x5

    if-le v9, v10, :cond_21

    .line 284
    const/4 v9, 0x3

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/apkol/utils/g/b;->b:J

    .line 285
    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/apkol/utils/g/b;->c:J

    .line 286
    const/4 v9, 0x0

    aget-object v9, v8, v9

    iput-object v9, v0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    .line 287
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/apkol/utils/g/b;->e:Z

    .line 288
    const/4 v9, 0x5

    aget-object v9, v8, v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_23

    .line 289
    const/4 v9, 0x5

    aget-object v8, v8, v9

    iput-object v8, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    .line 291
    :cond_23
    iget-object v8, v0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    const-string v9, "fuse"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 292
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/apkol/utils/g/b;->a:Z

    goto :goto_13

    .line 296
    :cond_24
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/apkol/utils/g/b;->b:J

    .line 297
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/apkol/utils/g/b;->c:J

    goto :goto_12

    .line 308
    :cond_25
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 309
    iget-object v4, v0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 310
    iget-object v4, v0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_26

    .line 311
    iget-object v0, v0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_8

    .line 317
    :cond_27
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 318
    iget-object v10, v0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 319
    iget-object v10, v0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28

    .line 320
    iget-object v10, v0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-boolean v0, v0, Lcom/apkol/utils/g/b;->a:Z

    if-eqz v0, :cond_29

    .line 323
    const/4 v5, 0x1

    .line 316
    :cond_28
    :goto_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_9

    .line 325
    :cond_29
    const/4 v4, 0x1

    goto :goto_14

    .line 331
    :cond_2a
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 332
    if-nez v5, :cond_2b

    iget-boolean v7, v0, Lcom/apkol/utils/g/b;->a:Z

    if-eqz v7, :cond_2b

    iget-object v7, v0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    const-string v9, ""

    if-ne v7, v9, :cond_2b

    .line 333
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    const/4 v5, 0x1

    .line 336
    :cond_2b
    if-nez v4, :cond_2c

    iget-boolean v7, v0, Lcom/apkol/utils/g/b;->a:Z

    if-nez v7, :cond_2c

    iget-object v7, v0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    const-string v9, ""

    if-ne v7, v9, :cond_2c

    .line 337
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const/4 v4, 0x1

    .line 330
    :cond_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_a

    .line 343
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ",sdcard:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    iget-object v0, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 344
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    iget-wide v4, v0, Lcom/apkol/utils/g/b;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 345
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    iget-wide v4, v0, Lcom/apkol/utils/g/b;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    iget-boolean v0, v0, Lcom/apkol/utils/g/b;->a:Z

    if-eqz v0, :cond_2e

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-true"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    iget-object v0, v0, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    iget-boolean v0, v0, Lcom/apkol/utils/g/b;->e:Z

    if-eqz v0, :cond_2f

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-true"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    :goto_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b

    .line 350
    :cond_2e
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    iput-object v2, v0, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-false"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 357
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-false"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_16
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 513
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 515
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 520
    if-eqz v0, :cond_0

    .line 521
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 520
    :goto_1
    if-eqz v0, :cond_0

    .line 521
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 522
    :catch_1
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    .line 520
    :goto_2
    if-eqz v1, :cond_1

    .line 521
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 525
    :cond_1
    :goto_3
    throw v0

    .line 522
    :catch_2
    move-exception v1

    .line 523
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 522
    :catch_3
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 518
    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    .line 516
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static b()Lcom/apkol/utils/g/b;
    .locals 3

    .prologue
    .line 398
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 403
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 399
    :cond_1
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 400
    iget-boolean v2, v0, Lcom/apkol/utils/g/b;->a:Z

    if-nez v2, :cond_0

    .line 398
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 555
    if-eqz p0, :cond_0

    const-string v0, "apkolfail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    const/4 v0, 0x0

    .line 557
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 412
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 408
    :cond_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 409
    iget-boolean v2, v0, Lcom/apkol/utils/g/b;->a:Z

    if-eqz v2, :cond_1

    .line 410
    iget-object v0, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    goto :goto_1

    .line 407
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 479
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 482
    if-ltz v0, :cond_1

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_2

    .line 490
    :cond_0
    invoke-static {v0, v0}, Lcom/apkol/utils/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {v0}, Lcom/apkol/utils/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 494
    const/4 v0, 0x0

    .line 499
    :goto_1
    return v0

    .line 487
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 499
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static d()Lcom/apkol/utils/g/b;
    .locals 3

    .prologue
    .line 416
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 421
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 417
    :cond_1
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 418
    iget-boolean v2, v0, Lcom/apkol/utils/g/b;->a:Z

    if-eqz v2, :cond_0

    .line 416
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 425
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 430
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 426
    :cond_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 427
    iget-boolean v2, v0, Lcom/apkol/utils/g/b;->a:Z

    if-nez v2, :cond_1

    .line 428
    iget-object v0, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    goto :goto_1

    .line 425
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static f()Lcom/apkol/utils/g/b;
    .locals 3

    .prologue
    .line 434
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 439
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 435
    :cond_1
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 436
    iget-boolean v2, v0, Lcom/apkol/utils/g/b;->e:Z

    if-nez v2, :cond_0

    .line 434
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 443
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 448
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 444
    :cond_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 445
    iget-boolean v2, v0, Lcom/apkol/utils/g/b;->e:Z

    if-eqz v2, :cond_1

    .line 446
    iget-object v0, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    goto :goto_1

    .line 443
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 452
    sget-object v0, Lcom/apkol/utils/g/c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apkol/utils/g/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 453
    sget-object v0, Lcom/apkol/utils/g/c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i()V
    .locals 5

    .prologue
    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apkol/utils/g/c;->a:Ljava/util/ArrayList;

    .line 467
    sget-object v0, Lcom/apkol/utils/g/c;->f:Ljava/lang/String;

    const-string v1, "checkAllSDcardPathCanWork start"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 475
    sget-object v0, Lcom/apkol/utils/g/c;->f:Ljava/lang/String;

    const-string v1, "checkAllSDcardPathCanWork finish"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void

    .line 469
    :cond_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 470
    iget-object v2, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/apkol/utils/g/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    sget-object v2, Lcom/apkol/utils/g/c;->a:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v2, Lcom/apkol/utils/g/c;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SDcardPathCanWork:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    const-string v1, ""

    .line 369
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 394
    sget-object v0, Lcom/apkol/utils/g/c;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SdcardManager = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void

    .line 370
    :cond_0
    sget-object v0, Lcom/apkol/utils/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/g/b;

    .line 371
    iget-object v3, v0, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    const-string v4, ""

    if-eq v3, v4, :cond_2

    .line 372
    const-string v1, "busybox"

    .line 373
    iget-object v3, v0, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    const-string v4, "[0-9]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mount -r -w -t vfat /dev/block/vold/179:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    iget-object v4, v0, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 377
    iget-object v4, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    const-string v4, "/"

    .line 374
    invoke-static {v1, v3, v4}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mount -r -w -o remount -t vfat /dev/block/vold/179:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    iget-object v4, v0, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 381
    iget-object v0, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v3, "/"

    .line 378
    invoke-static {v1, v0, v3}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 384
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mount -r -w -t vfat /dev/block/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    iget-object v4, v0, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 386
    iget-object v4, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 384
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    const-string v4, "/"

    .line 383
    invoke-static {v1, v3, v4}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mount -r -w -o remount -t vfat /dev/block/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    iget-object v4, v0, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 390
    iget-object v0, v0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v3, "/"

    .line 387
    invoke-static {v1, v0, v3}, Lcom/apkol/utils/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
