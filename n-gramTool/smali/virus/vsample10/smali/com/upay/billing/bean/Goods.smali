.class public Lcom/upay/billing/bean/Goods;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public appKey:Ljava/lang/String;

.field public btselectUiKey:Ljava/lang/String;

.field public confirm:Z

.field public confirmUiKey:Ljava/lang/String;

.field public excludes:Ljava/util/HashSet;

.field public key:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public payCodeAi:Ljava/lang/String;

.field public payCodeHe:Ljava/lang/String;

.field public payCodeMm:Ljava/lang/String;

.field public payCodeWo:Ljava/lang/String;

.field public price:I

.field public priceType:Lcom/upay/billing/bean/PriceType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/upay/billing/utils/Json;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/upay/billing/bean/Goods;->confirm:Z

    sget-object v0, Lcom/upay/billing/bean/PriceType;->FIXED:Lcom/upay/billing/bean/PriceType;

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->priceType:Lcom/upay/billing/bean/PriceType;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->excludes:Ljava/util/HashSet;

    const-string v0, "key"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/upay/billing/bean/Goods;->appKey:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->name:Ljava/lang/String;

    const-string v0, "label"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->label:Ljava/lang/String;

    const-string v0, "price"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/upay/billing/bean/Goods;->price:I

    const-string v0, "confirm"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/upay/billing/bean/Goods;->confirm:Z

    const-string v0, "exclude_bt_keys"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->toArray(Ljava/lang/Class;[Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v0, "exclude_bt_keys"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    iget-object v2, p0, Lcom/upay/billing/bean/Goods;->excludes:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "confirm_ui_key"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->confirmUiKey:Ljava/lang/String;

    const-string v0, "btselect_ui_key"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->btselectUiKey:Ljava/lang/String;

    const-string v0, "price_type"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/upay/billing/bean/PriceType;->valueOf(I)Lcom/upay/billing/bean/PriceType;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->priceType:Lcom/upay/billing/bean/PriceType;

    const-string v0, "pay_code_he"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->payCodeHe:Ljava/lang/String;

    const-string v0, "pay_code_mm"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->payCodeMm:Ljava/lang/String;

    const-string v0, "pay_code_wo"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->payCodeWo:Ljava/lang/String;

    const-string v0, "pay_code_ai"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/bean/Goods;->payCodeAi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Goods(key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/bean/Goods;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/bean/Goods;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upay/billing/bean/Goods;->price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/bean/Goods;->confirmUiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
