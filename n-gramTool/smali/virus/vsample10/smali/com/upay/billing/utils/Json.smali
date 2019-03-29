.class public Lcom/upay/billing/utils/Json;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Iterable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private obj:Ljava/lang/Object;

.field public type:Lcom/upay/billing/utils/Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/upay/billing/utils/Type;->NULL:Lcom/upay/billing/utils/Type;

    iput-object v0, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    iput-object v0, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    iput-object p1, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/upay/billing/utils/Type;->BOOL:Lcom/upay/billing/utils/Type;

    iput-object v0, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    iput-object p1, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/upay/billing/utils/Type;->NUMBER:Lcom/upay/billing/utils/Type;

    iput-object v0, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    iput-object p1, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/upay/billing/utils/Type;->STRING:Lcom/upay/billing/utils/Type;

    iput-object v0, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    iput-object p1, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/upay/billing/utils/Type;->OBJECT:Lcom/upay/billing/utils/Type;

    iput-object v0, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    iput-object p1, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/upay/billing/utils/Json;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static final asJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;
    .locals 3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    iget-object v0, v0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final asList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    new-instance v3, Lcom/upay/billing/utils/Json;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final varargs assertType([Lcom/upay/billing/utils/Type;)Z
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    if-ne v3, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', expect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final createArray([I)Lcom/upay/billing/utils/Json;
    .locals 4

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v0, p0, v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/upay/billing/utils/Json;

    invoke-direct {v0, v2}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final createArray([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;
    .locals 4

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v0, p0, v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/upay/billing/utils/Json;

    invoke-direct {v0, v2}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;
    .locals 5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    :try_start_0
    aget-object v4, p0, v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected type at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/upay/billing/utils/Json;

    invoke-direct {v0, v2}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/upay/billing/utils/Json;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/upay/billing/utils/Json;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Lcom/upay/billing/utils/Json;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/upay/billing/utils/Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/upay/billing/utils/Json;->assertType([Lcom/upay/billing/utils/Type;)Z

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final asArray()Lorg/json/JSONArray;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/upay/billing/utils/Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/upay/billing/utils/Json;->assertType([Lcom/upay/billing/utils/Type;)Z

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public final asBool(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/upay/billing/utils/d;->kM:[I

    iget-object v3, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v3}, Lcom/upay/billing/utils/Type;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move-object v0, p1

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :pswitch_2
    const-string v3, "true"

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "false"

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final asBool()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/upay/billing/utils/Json;->asBool(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final asDouble()D
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/upay/billing/utils/Json;->asDouble(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public final asDouble(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 2

    sget-object v0, Lcom/upay/billing/utils/d;->kM:[I

    iget-object v1, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v1}, Lcom/upay/billing/utils/Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final asFloat()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/upay/billing/utils/Json;->asFloat(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public final asFloat(Ljava/lang/Float;)Ljava/lang/Float;
    .locals 2

    sget-object v0, Lcom/upay/billing/utils/d;->kM:[I

    iget-object v1, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v1}, Lcom/upay/billing/utils/Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final asInt()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/upay/billing/utils/Json;->asInt(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final asInt(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    sget-object v0, Lcom/upay/billing/utils/d;->kM:[I

    iget-object v1, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v1}, Lcom/upay/billing/utils/Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final asLong()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/upay/billing/utils/Json;->asLong(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final asLong(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    sget-object v0, Lcom/upay/billing/utils/d;->kM:[I

    iget-object v1, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v1}, Lcom/upay/billing/utils/Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final asObject()Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/upay/billing/utils/Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/upay/billing/utils/Type;->OBJECT:Lcom/upay/billing/utils/Type;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/upay/billing/utils/Json;->assertType([Lcom/upay/billing/utils/Type;)Z

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public final asStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/upay/billing/utils/Json;->asStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final asStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/upay/billing/utils/d;->kM:[I

    iget-object v1, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v1}, Lcom/upay/billing/utils/Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected clone()Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/upay/billing/utils/d;->kM:[I

    iget-object v2, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v2}, Lcom/upay/billing/utils/Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/upay/billing/utils/Json;

    invoke-direct {v0, v1}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/upay/billing/utils/Json;

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/upay/billing/utils/Json;

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/upay/billing/utils/Json;

    new-instance v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/upay/billing/utils/Json;->asArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final get(Ljava/lang/String;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/upay/billing/utils/Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/upay/billing/utils/Type;->OBJECT:Lcom/upay/billing/utils/Type;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/upay/billing/utils/Json;->assertType([Lcom/upay/billing/utils/Type;)Z

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/upay/billing/utils/Json;

    invoke-direct {p2, v0}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public final getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    return-object v0
.end method

.method public final getArray(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/upay/billing/utils/Json;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/upay/billing/utils/Json;->get(Ljava/lang/String;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    sget-object v3, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    if-ne v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/upay/billing/utils/Json;

    invoke-direct {v0, p2}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getArrayAt(I)Lcom/upay/billing/utils/Json;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getArrayAt(ILorg/json/JSONArray;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    return-object v0
.end method

.method public final getArrayAt(ILorg/json/JSONArray;)Lcom/upay/billing/utils/Json;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/upay/billing/utils/Json;->getAt(ILcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    sget-object v3, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    if-ne v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/upay/billing/utils/Json;

    invoke-direct {v0, p2}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getAt(ILcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/upay/billing/utils/Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/upay/billing/utils/Json;->assertType([Lcom/upay/billing/utils/Type;)Z

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/upay/billing/utils/Json;

    invoke-direct {p2, v0}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public final getBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->get(Ljava/lang/String;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asBool(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final getBool(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getBoolAt(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getAt(ILcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asBool(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final getBoolAt(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getBoolAt(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getDouble(Ljava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->get(Ljava/lang/String;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asDouble(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final getDoubleAt(I)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getDoubleAt(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDoubleAt(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getAt(ILcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asDouble(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final getFloat(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->get(Ljava/lang/String;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asFloat(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final getFloatAt(I)F
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getFloatAt(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getFloatAt(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getAt(ILcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asFloat(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->get(Ljava/lang/String;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asInt(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final getIntAt(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getIntAt(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getIntAt(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getAt(ILcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asInt(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->get(Ljava/lang/String;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asLong(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final getLongAt(I)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getLongAt(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLongAt(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getAt(ILcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asLong(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    return-object v0
.end method

.method public final getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/upay/billing/utils/Json;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/upay/billing/utils/Json;->get(Ljava/lang/String;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    sget-object v3, Lcom/upay/billing/utils/Type;->OBJECT:Lcom/upay/billing/utils/Type;

    if-ne v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/upay/billing/utils/Json;

    invoke-direct {v0, p2}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getObjectAt(I)Lcom/upay/billing/utils/Json;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getObjectAt(ILorg/json/JSONObject;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    return-object v0
.end method

.method public final getObjectAt(ILorg/json/JSONObject;)Lcom/upay/billing/utils/Json;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/upay/billing/utils/Json;->getAt(ILcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    sget-object v3, Lcom/upay/billing/utils/Type;->OBJECT:Lcom/upay/billing/utils/Type;

    if-ne v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/upay/billing/utils/Json;

    invoke-direct {v0, p2}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->get(Ljava/lang/String;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final getStrAt(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getStrAt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStrAt(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/utils/Json;->getAt(ILcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/upay/billing/utils/Json;->asStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/upay/billing/utils/Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/upay/billing/utils/Json;->assertType([Lcom/upay/billing/utils/Type;)Z

    new-instance v0, Lcom/upay/billing/utils/c;

    invoke-direct {v0, p0}, Lcom/upay/billing/utils/c;-><init>(Lcom/upay/billing/utils/Json;)V

    return-object v0
.end method

.method public final keys()Ljava/lang/Iterable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/upay/billing/utils/Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/upay/billing/utils/Type;->OBJECT:Lcom/upay/billing/utils/Type;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/upay/billing/utils/Json;->assertType([Lcom/upay/billing/utils/Type;)Z

    new-instance v0, Lcom/upay/billing/utils/a;

    invoke-direct {v0, p0}, Lcom/upay/billing/utils/a;-><init>(Lcom/upay/billing/utils/Json;)V

    return-object v0
.end method

.method public length()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/upay/billing/utils/Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/upay/billing/utils/Type;->OBJECT:Lcom/upay/billing/utils/Type;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/upay/billing/utils/Json;->assertType([Lcom/upay/billing/utils/Type;)Z

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    sget-object v1, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    goto :goto_0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;
    .locals 4

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/upay/billing/utils/Type;

    const/4 v2, 0x0

    sget-object v3, Lcom/upay/billing/utils/Type;->OBJECT:Lcom/upay/billing/utils/Type;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/upay/billing/utils/Json;->assertType([Lcom/upay/billing/utils/Type;)Z

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    instance-of v1, p2, Lcom/upay/billing/utils/Json;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/upay/billing/utils/Json;

    move-object v1, v0

    iget-object p2, v1, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final putAt(ILjava/lang/Object;)Lcom/upay/billing/utils/Json;
    .locals 4

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/upay/billing/utils/Type;

    const/4 v2, 0x0

    sget-object v3, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/upay/billing/utils/Json;->assertType([Lcom/upay/billing/utils/Type;)Z

    if-gez p1, :cond_0

    iget-object v1, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/2addr p1, v1

    :cond_0
    :try_start_0
    instance-of v1, p2, Lcom/upay/billing/utils/Json;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/upay/billing/utils/Json;

    move-object v1, v0

    iget-object p2, v1, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Type;->valueOf(Ljava/lang/String;)Lcom/upay/billing/utils/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/upay/billing/utils/d;->kM:[I

    iget-object v2, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v2}, Lcom/upay/billing/utils/Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    iput-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_5
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final toArray(Ljava/lang/Class;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/upay/billing/utils/Type;

    sget-object v1, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/upay/billing/utils/Json;->assertType([Lcom/upay/billing/utils/Type;)Z

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const-class v2, Ljava/lang/String;

    if-ne p1, v2, :cond_2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    invoke-virtual {p0, v1}, Lcom/upay/billing/utils/Json;->getStrAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v0, p2

    goto :goto_0

    :cond_2
    const-class v2, Ljava/lang/Integer;

    if-ne p1, v2, :cond_3

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upay/billing/utils/Json;->getIntAt(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-class v2, Ljava/lang/Long;

    if-ne p1, v2, :cond_4

    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upay/billing/utils/Json;->getLongAt(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    const-class v2, Ljava/lang/Float;

    if-ne p1, v2, :cond_5

    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upay/billing/utils/Json;->getFloatAt(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_4

    :cond_5
    const-class v2, Ljava/lang/Double;

    if-ne p1, v2, :cond_6

    :goto_5
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upay/billing/utils/Json;->getDoubleAt(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const-class v2, Ljava/lang/Boolean;

    if-ne p1, v2, :cond_7

    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upay/billing/utils/Json;->getBoolAt(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_6

    :cond_7
    const-class v2, Lorg/json/JSONObject;

    if-ne p1, v2, :cond_8

    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    invoke-virtual {p0, v1}, Lcom/upay/billing/utils/Json;->getObjectAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_7

    :cond_8
    const-class v2, Lorg/json/JSONArray;

    if-ne p1, v2, :cond_9

    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    invoke-virtual {p0, v1}, Lcom/upay/billing/utils/Json;->getArrayAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_8

    :cond_9
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->type:Lcom/upay/billing/utils/Type;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/utils/Json;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
