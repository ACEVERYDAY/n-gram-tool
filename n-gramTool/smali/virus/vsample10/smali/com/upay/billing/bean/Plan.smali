.class public Lcom/upay/billing/bean/Plan;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0x2

.field public static final BETA:I = 0x3

.field public static final CLOSED:I = 0x0

.field public static final DEVELOPING:I = 0x1

.field public static final RELEASED:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public appKey:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;

.field public buildDate:J

.field public channelKey:Ljava/lang/String;

.field public cmds:Ljava/util/HashMap;

.field public deleteMt:Z

.field public excludeCmdKeys:Ljava/util/regex/Pattern;

.field public goods:Ljava/util/HashMap;

.field public issueType:I

.field public lastUpdate:J

.field public localResources:Ljava/util/HashMap;

.field public resources:Ljava/util/HashMap;

.field public state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upay/billing/bean/Plan;->deleteMt:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/upay/billing/bean/Plan;->state:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/upay/billing/bean/Plan;->issueType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upay/billing/bean/Plan;->excludeCmdKeys:Ljava/util/regex/Pattern;

    iput-object p1, p0, Lcom/upay/billing/bean/Plan;->appKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/upay/billing/bean/Plan;->localResources:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/bean/Plan;->localResources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    if-eqz v0, :cond_0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public update(Lcom/upay/billing/UpayCore;Ljava/lang/String;Ljava/lang/String;JLcom/upay/billing/utils/Json;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    iput-object p2, p0, Lcom/upay/billing/bean/Plan;->appSecret:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/bean/Plan;->channelKey:Ljava/lang/String;

    iput-wide p4, p0, Lcom/upay/billing/bean/Plan;->buildDate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/upay/billing/bean/Plan;->lastUpdate:J

    const-string v1, "delete_mt"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/upay/billing/bean/Plan;->deleteMt:Z

    const-string v1, "issue_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/upay/billing/bean/Plan;->issueType:I

    const-string v1, "exclude_cmd_keys"

    const-string v2, "^$"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/upay/billing/bean/Plan;->excludeCmdKeys:Ljava/util/regex/Pattern;

    const-string v1, "app_state"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/upay/billing/bean/Plan;->state:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/upay/billing/bean/Plan;->goods:Ljava/util/HashMap;

    const-string v1, "goods"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/utils/Json;

    new-instance v3, Lcom/upay/billing/bean/Goods;

    iget-object v4, p0, Lcom/upay/billing/bean/Plan;->appKey:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/upay/billing/bean/Goods;-><init>(Ljava/lang/String;Lcom/upay/billing/utils/Json;)V

    iget-object v1, p0, Lcom/upay/billing/bean/Plan;->goods:Ljava/util/HashMap;

    iget-object v4, v3, Lcom/upay/billing/bean/Goods;->key:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/upay/billing/bean/Plan;->cmds:Ljava/util/HashMap;

    const-string v1, "cmd"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/utils/Json;

    new-instance v3, Lcom/upay/billing/bean/Cmd;

    invoke-direct {v3, p1, v1}, Lcom/upay/billing/bean/Cmd;-><init>(Lcom/upay/billing/UpayCore;Lcom/upay/billing/utils/Json;)V

    iget-object v1, p0, Lcom/upay/billing/bean/Plan;->cmds:Ljava/util/HashMap;

    iget v4, v3, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/upay/billing/utils/Util;->mapListAdd(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/upay/billing/bean/Plan;->localResources:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/upay/billing/bean/Plan;->localResources:Ljava/util/HashMap;

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/upay/billing/bean/Plan;->resources:Ljava/util/HashMap;

    const-string v1, "resource"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/upay/billing/UpayConstant;->RESOURCE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/upay/billing/bean/Plan;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/utils/Json;

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/upay/billing/bean/Plan;->resources:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/upay/billing/bean/Plan;->localResources:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upay/billing/utils/Json;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_3

    const-string v7, "utime"

    invoke-virtual {v1, v7}, Lcom/upay/billing/utils/Json;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "ctime"

    invoke-virtual {v2, v9}, Lcom/upay/billing/utils/Json;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-lez v2, :cond_3

    :cond_4
    new-instance v2, Lcom/upay/billing/bean/Plan$1;

    const-string v7, "url"

    invoke-virtual {v1, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1, v6, v5}, Lcom/upay/billing/bean/Plan$1;-><init>(Lcom/upay/billing/bean/Plan;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    return-void
.end method
