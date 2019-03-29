.class Lcom/upay/billing/utils/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field kJ:Lorg/json/JSONArray;

.field kK:Ljava/util/Iterator;

.field final synthetic kL:Lcom/upay/billing/utils/a;


# direct methods
.method constructor <init>(Lcom/upay/billing/utils/a;)V
    .locals 2

    iput-object p1, p0, Lcom/upay/billing/utils/b;->kL:Lcom/upay/billing/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/upay/billing/utils/b;->kL:Lcom/upay/billing/utils/a;

    iget-object v0, v0, Lcom/upay/billing/utils/a;->kI:Lcom/upay/billing/utils/Json;

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->access$000(Lcom/upay/billing/utils/Json;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/utils/b;->kJ:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/upay/billing/utils/b;->kJ:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/upay/billing/utils/Json;

    iget-object v1, p0, Lcom/upay/billing/utils/b;->kJ:Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lcom/upay/billing/utils/Json;-><init>(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/utils/b;->kK:Ljava/util/Iterator;

    return-void

    :cond_0
    const-string v0, "[]"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/utils/b;->kK:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/upay/billing/utils/b;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/utils/b;->kK:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
