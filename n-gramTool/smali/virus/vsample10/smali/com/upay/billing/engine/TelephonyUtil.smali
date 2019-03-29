.class public final Lcom/upay/billing/engine/TelephonyUtil;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field private static definedDoubleCardMethod_iccid:Ljava/lang/String;

.field private static definedDoubleCardMethod_imsi:Ljava/lang/String;

.field private static final iphonesubinfoServices:[Ljava/lang/Object;

.field private static iphonesubinfos:Ljava/util/TreeMap;

.field private static final ismsServices:[Ljava/lang/Object;

.field private static ismss:Ljava/util/TreeMap;

.field private static final isubService:[Ljava/lang/Object;

.field private static isubs:Ljava/util/TreeMap;

.field private static final mapClassMembers:Ljava/util/HashMap;

.field private static final primaryTypes:Ljava/util/HashMap;

.field private static simPositionBySubid:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/TelephonyUtil;->simPositionBySubid:Ljava/util/HashMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/TelephonyUtil;->isubs:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfos:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/TelephonyUtil;->ismss:Ljava/util/TreeMap;

    const-string v0, "getDualSubscriberId-1"

    sput-object v0, Lcom/upay/billing/engine/TelephonyUtil;->definedDoubleCardMethod_imsi:Ljava/lang/String;

    const-string v0, "getDualIccSerialNumber-1"

    sput-object v0, Lcom/upay/billing/engine/TelephonyUtil;->definedDoubleCardMethod_iccid:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/TelephonyUtil;->mapClassMembers:Ljava/util/HashMap;

    const-class v0, Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    const/16 v3, 0x12

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const/16 v4, 0x42

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v11

    const/4 v4, 0x3

    const/16 v5, 0x43

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x44

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/16 v5, 0x46

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const/16 v5, 0x49

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const/16 v5, 0x4a

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const/16 v5, 0x53

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xe

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const/16 v5, 0x56

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x10

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const/16 v5, 0x5a

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/TelephonyUtil;->newMap(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/TelephonyUtil;->primaryTypes:Ljava/util/HashMap;

    invoke-static {}, Lcom/upay/billing/engine/TelephonyUtil;->listServices()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    const-string v5, "iphonesubinfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfos:Ljava/util/TreeMap;

    invoke-static {v4}, Lcom/upay/billing/engine/TelephonyUtil;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "isms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/upay/billing/engine/TelephonyUtil;->ismss:Ljava/util/TreeMap;

    invoke-static {v4}, Lcom/upay/billing/engine/TelephonyUtil;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v5, "isub"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/upay/billing/engine/TelephonyUtil;->isubs:Ljava/util/TreeMap;

    invoke-static {v4}, Lcom/upay/billing/engine/TelephonyUtil;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfos:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfoServices:[Ljava/lang/Object;

    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->ismss:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/upay/billing/engine/TelephonyUtil;->ismsServices:[Ljava/lang/Object;

    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->isubs:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/upay/billing/engine/TelephonyUtil;->isubService:[Ljava/lang/Object;

    :try_start_0
    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfos:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfoServices:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object v4, v5, v0

    move v0, v2

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->ismss:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/upay/billing/engine/TelephonyUtil;->ismsServices:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object v4, v5, v0

    move v0, v2

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->isubs:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/upay/billing/engine/TelephonyUtil;->isubService:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object v4, v5, v0

    move v0, v2

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->isubs:Ljava/util/TreeMap;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->isubs:Ljava/util/TreeMap;

    const-string v2, "isub"

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move v6, v1

    :goto_5
    if-ge v6, v11, :cond_7

    :try_start_1
    sget-object v7, Lcom/upay/billing/engine/TelephonyUtil;->simPositionBySubid:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    const-string v2, "getSubId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static/range {v0 .. v5}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v7, Lcom/upay/billing/engine/TelephonyUtil;->simPositionBySubid:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    const-string v2, "getSubId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static/range {v0 .. v5}, Lcom/upay/billing/engine/TelephonyUtil;->invokeSilent(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    check-cast v1, [J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    :cond_7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1

    if-eqz p1, :cond_0

    :goto_0
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-class v0, Lcom/upay/billing/utils/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final getMembers(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->mapClassMembers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->mapClassMembers:Ljava/util/HashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p0

    :goto_0
    if-eqz v3, :cond_3

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Constructor;

    invoke-static {v0, v1}, Lcom/upay/billing/engine/TelephonyUtil;->safeArray([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;

    array-length v5, v0

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const-string v8, "<init>"

    new-array v9, v12, [Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;

    new-instance v10, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;

    invoke-static {v7}, Lcom/upay/billing/engine/TelephonyUtil;->getSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    array-length v7, v7

    invoke-direct {v10, v11, v7, v6}, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;-><init>(Ljava/lang/String;ILjava/lang/reflect/Member;)V

    aput-object v10, v9, v2

    invoke-static {v4, v8, v9}, Lcom/upay/billing/engine/TelephonyUtil;->mapListAdd(Ljava/util/Map;Ljava/lang/Object;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1}, Lcom/upay/billing/engine/TelephonyUtil;->safeArray([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    array-length v5, v0

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_1

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;

    new-instance v10, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;

    invoke-static {v7}, Lcom/upay/billing/engine/TelephonyUtil;->getSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    array-length v7, v7

    invoke-direct {v10, v11, v7, v6}, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;-><init>(Ljava/lang/String;ILjava/lang/reflect/Member;)V

    aput-object v10, v9, v2

    invoke-static {v4, v8, v9}, Lcom/upay/billing/engine/TelephonyUtil;->mapListAdd(Ljava/util/Map;Ljava/lang/Object;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Field;

    invoke-static {v0, v1}, Lcom/upay/billing/engine/TelephonyUtil;->safeArray([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    array-length v5, v0

    move v1, v2

    :goto_3
    if-ge v1, v5, :cond_2

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;

    new-instance v9, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;

    const/4 v10, -0x1

    invoke-direct {v9, v13, v10, v6}, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;-><init>(Ljava/lang/String;ILjava/lang/reflect/Member;)V

    aput-object v9, v8, v2

    invoke-static {v4, v7, v8}, Lcom/upay/billing/engine/TelephonyUtil;->mapListAdd(Ljava/util/Map;Ljava/lang/Object;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->mapClassMembers:Ljava/util/HashMap;

    invoke-static {v0, p0, p1, v13}, Lcom/upay/billing/engine/TelephonyUtil;->mapMapGet(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final getMethodObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_3
    invoke-static {p1, p2}, Lcom/upay/billing/engine/TelephonyUtil;->getMembers(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/engine/TelephonyUtil;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;

    iget v2, v0, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->numArgs:I

    if-ltz v2, :cond_4

    if-eqz p3, :cond_5

    iget-object v2, v0, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->signature:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_5
    iget-object v0, v0, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->member:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    :goto_0
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getPhoneServiceMethod(I)Lcom/upay/billing/utils/Json;
    .locals 4

    const-string v0, "{}"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfos:Ljava/util/TreeMap;

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfos:Ljava/util/TreeMap;

    const-string v3, "get"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->ismss:Ljava/util/TreeMap;

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->ismss:Ljava/util/TreeMap;

    const-string v3, "send"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->isubs:Ljava/util/TreeMap;

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->isubs:Ljava/util/TreeMap;

    const-string v3, "get"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez p0, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/upay/billing/engine/TelephonyUtil;->getServiceMethod(Ljava/util/TreeMap;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    return-object v2

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    invoke-static {v0, v2}, Lcom/upay/billing/engine/TelephonyUtil;->getServiceList(Ljava/util/TreeMap;Lcom/upay/billing/utils/Json;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static final getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/upay/billing/engine/TelephonyUtil;->getClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "getService"

    const-string v4, "Ljava.lang.String;"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v0, v3, v4, v5}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$Stub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/upay/billing/engine/TelephonyUtil;->getClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "asInterface"

    const-string v5, "Landroid.os.IBinder;"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v3, v2, v4, v5, v6}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static final getServiceList(Ljava/util/TreeMap;Lcom/upay/billing/utils/Json;)V
    .locals 3

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final getServiceMethod(Ljava/util/TreeMap;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V
    .locals 15

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v1, v6, v3

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v12, v11

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v12, :cond_0

    aget-object v13, v11, v1

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static final varargs getSignature([Ljava/lang/Class;)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, p0, v2

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->primaryTypes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSimCount()I
    .locals 9

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->isubs:Ljava/util/TreeMap;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->isubs:Ljava/util/TreeMap;

    const-string v4, "isub"

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "int"

    const-string v5, "getSubId"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v0, v5, v6}, Lcom/upay/billing/engine/TelephonyUtil;->verifyMethodByReturnType(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v4, "long"

    const-string v5, "getSubId"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v0, v5, v6}, Lcom/upay/billing/engine/TelephonyUtil;->verifyMethodByReturnType(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfos:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfos:Ljava/util/TreeMap;

    const-string v4, "iphonesubinfo"

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v0, Lcom/upay/billing/engine/TelephonyUtil;->definedDoubleCardMethod_imsi:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_5

    aget-object v6, v5, v0

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4, v6, v7}, Lcom/upay/billing/engine/TelephonyUtil;->verifyMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public static final getSimInfo(Landroid/content/Context;I)Lcom/upay/billing/engine/TelephonyUtil$SimInfo;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/upay/billing/engine/TelephonyUtil;->listSimInfos(Landroid/content/Context;)[Lcom/upay/billing/engine/TelephonyUtil$SimInfo;

    move-result-object v0

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final varargs invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inst="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_3
    invoke-static {p1, p2}, Lcom/upay/billing/engine/TelephonyUtil;->getMembers(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    :cond_4
    :goto_0
    if-nez v2, :cond_c

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p4, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parameter(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance v2, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    if-nez p4, :cond_8

    :try_start_1
    array-length v3, p5

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;

    iget v5, v1, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->numArgs:I

    if-ne v3, v5, :cond_6

    if-nez p3, :cond_7

    iget-object v5, v1, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v5}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    :cond_7
    iget-object v1, v1, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->member:Ljava/lang/reflect/Member;

    :goto_2
    move-object v2, v1

    goto :goto_0

    :cond_8
    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p4, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;

    iget-object v4, v1, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->signature:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez p3, :cond_a

    iget-object v4, v1, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v4}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    :cond_a
    iget-object v2, v1, Lcom/upay/billing/engine/TelephonyUtil$MemberInfo;->member:Ljava/lang/reflect/Member;

    goto/16 :goto_0

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " with signature \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    if-eqz p3, :cond_d

    invoke-interface {v2}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_d

    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/AccessibleObject;

    move-object v1, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_d
    instance-of v1, v2, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_e

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    return-object v1

    :cond_e
    check-cast v2, Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_3

    :cond_f
    move-object v1, v2

    goto :goto_2
.end method

.method public static final varargs invokeSilent(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final listServices()[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0, v4}, Lcom/upay/billing/engine/TelephonyUtil;->getClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "listServices"

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static final listSimInfos(Landroid/content/Context;)[Lcom/upay/billing/engine/TelephonyUtil$SimInfo;
    .locals 15

    const-string v9, ""

    const-string v7, ""

    invoke-static {}, Lcom/upay/billing/engine/TelephonyUtil;->getSimCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/upay/billing/engine/TelephonyUtil$SimInfo;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-static {v1, v4}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;

    invoke-direct {v4}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;-><init>()V

    invoke-virtual {v4, v3}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->setIccid(Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v4, v2, v1

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x2

    new-array v10, v1, [Lcom/upay/billing/engine/TelephonyUtil$SimInfo;

    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->isubService:[Ljava/lang/Object;

    array-length v1, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    const/4 v1, 0x2

    if-ge v8, v1, :cond_1

    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfos:Ljava/util/TreeMap;

    const-string v2, "iphonesubinfo"

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/upay/billing/engine/TelephonyUtil;->simPositionBySubid:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getSubscriberIdForSubscriber"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    const/4 v2, 0x0

    const-string v3, "getIccSerialNumberForSubscriber"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v6, v11

    invoke-static/range {v1 .. v6}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v2, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;

    invoke-direct {v2}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;-><init>()V

    invoke-virtual {v2, v7}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->setIccid(Ljava/lang/String;)V

    aput-object v2, v10, v8

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    const-string v3, "getSubscriberIdForSubscriber"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "getIccSerialNumberForSubscriber"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v6, v11

    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    invoke-static/range {v1 .. v6}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_1
    move-object v1, v10

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfoServices:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfos:Ljava/util/TreeMap;

    const-string v2, "msim"

    invoke-static {v1, v2}, Lcom/upay/billing/engine/TelephonyUtil;->verifyMapKey(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const/4 v8, 0x0

    :goto_3
    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfoServices:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v8, v1, :cond_8

    if-eqz v9, :cond_3

    move-object v1, v9

    :goto_4
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "getSubscriberId"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {v1 .. v6}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    const/4 v2, 0x0

    const-string v3, "getIccSerialNumber"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {v1 .. v6}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    new-instance v2, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;

    invoke-direct {v2}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;-><init>()V

    invoke-virtual {v2, v7}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->setIccid(Ljava/lang/String;)V

    invoke-static {v2, v10}, Lcom/upay/billing/engine/TelephonyUtil;->verifySimInfo(Lcom/upay/billing/engine/TelephonyUtil$SimInfo;[Lcom/upay/billing/engine/TelephonyUtil$SimInfo;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    if-le v8, v1, :cond_4

    add-int/lit8 v1, v8, -0x1

    :goto_6
    aput-object v2, v10, v1

    :goto_7
    add-int/lit8 v8, v1, 0x1

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfoServices:[Ljava/lang/Object;

    aget-object v1, v1, v8

    goto :goto_4

    :catch_1
    move-exception v2

    const/4 v2, 0x0

    const-string v3, "getSubscriberId"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "getIccSerialNumber"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v11

    invoke-static/range {v1 .. v6}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_5

    :cond_4
    move v1, v8

    goto :goto_6

    :cond_5
    sget-object v1, Lcom/upay/billing/engine/TelephonyUtil;->iphonesubinfoServices:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move v11, v2

    :goto_8
    const/4 v2, 0x2

    if-ge v11, v2, :cond_8

    sget-object v2, Lcom/upay/billing/engine/TelephonyUtil;->definedDoubleCardMethod_imsi:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    move v8, v2

    :goto_9
    array-length v2, v12

    if-ge v8, v2, :cond_6

    aget-object v2, v12, v8

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v14

    invoke-static/range {v1 .. v6}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v2

    :cond_6
    sget-object v2, Lcom/upay/billing/engine/TelephonyUtil;->definedDoubleCardMethod_iccid:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    move v8, v2

    :goto_a
    array-length v2, v12

    if-ge v8, v2, :cond_7

    aget-object v2, v12, v8

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_3
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v14

    invoke-static/range {v1 .. v6}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_b
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-object v7, v2

    goto :goto_a

    :catch_2
    move-exception v2

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_9

    :catch_3
    move-exception v2

    move-object v2, v7

    goto :goto_b

    :cond_7
    new-instance v2, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;

    invoke-direct {v2}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;-><init>()V

    invoke-virtual {v2, v9}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->setIccid(Ljava/lang/String;)V

    aput-object v2, v10, v11

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_8

    :cond_8
    move-object v1, v10

    goto/16 :goto_0

    :cond_9
    move v1, v8

    goto/16 :goto_7
.end method

.method public static final varargs mapListAdd(Ljava/util/Map;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final mapMapGet(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p3, v0

    :cond_0
    return-object p3
.end method

.method public static final varargs mapPut(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 4

    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the number of keyValuePairs arguments must be odd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static final varargs newMap(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, p2}, Lcom/upay/billing/engine/TelephonyUtil;->mapPut(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public static final safeArray([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object p0, v0

    goto :goto_0
.end method

.method public static final safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public static toNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static verifyMapKey(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs verifyMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0
.end method

.method public static varargs verifyMethodByReturnType(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    array-length v0, v0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-string v0, "long"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/upay/billing/engine/TelephonyUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_1
.end method

.method public static verifySimInfo(Lcom/upay/billing/engine/TelephonyUtil$SimInfo;[Lcom/upay/billing/engine/TelephonyUtil$SimInfo;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->imsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, p1, v2

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->imsi:Ljava/lang/String;

    invoke-static {v5}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, v4, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->imsi:Ljava/lang/String;

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
